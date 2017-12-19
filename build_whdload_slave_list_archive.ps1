# Build WHDLoad Slave List Archive
# --------------------------------
#
# Author: Henrik Nørfjand Stengaard
# Date:   2017-12-03
#
# A PowerShell script to build whdload slave list csv file with a list of whdload name and path to whdload slave file from .zip and .lha archives.


Param(
	[Parameter(Mandatory=$true)]
	[string]$archivesDir,
	[Parameter(Mandatory=$true)]
	[string]$entriesFile
)


Import-Module (Resolve-Path('data.psm1')) -Force


# paths
$readWhdloadSlaveFile = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("read_whdload_slave.ps1")
$archivesDir = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($archivesDir)
$sevenZipPath = "$env:ProgramFiles\7-Zip\7z.exe"
$tempDir = [System.IO.Path]::Combine("$env:SystemDrive\Temp", [System.IO.Path]::GetRandomFileName())


if (!(Test-Path -Path $sevenZipPath))
{
	throw "7-Zip file '$sevenZipPath' doesn't exist!"
}

$entries = @()
$archivesFiles = Get-ChildItem -Path $archivesDir -recurse | Where-Object { !$_.PSIsContainer -and $_.FullName -match '\.(zip|lha)$' }

foreach ($archivesFile in $archivesFiles)
{
	Write-Host $archivesFile.Name
	$archivesDirIndex = $archivesFile.FullName.IndexOf($archivesDir) + $archivesDir.Length + 1
	$archiveFile = $archivesFile.FullName.Substring($archivesDirIndex, $archivesFile.FullName.Length - $archivesDirIndex)

	
	# create temp directory
	if(!(test-path -path $tempDir))
	{
		mkdir $tempDir | Out-Null
	}

	# extract whdload archive file using 7-zip
	$sevenZipArgs = "x ""{0}"" -aoa" -f $archivesFile.FullName
	$sevenZipProcess = Start-Process $sevenZipPath $sevenZipArgs -WorkingDirectory $tempDir -Wait -Passthru -NoNewWindow -RedirectStandardOutput nul
	
	# fail, if 7-zip extract fails
	if ($sevenZipProcess.ExitCode -ne 0)
	{
		throw ("Failed to extract file '{0}'" -f $archivesFile.FullName)
	}

	# find entries in temp dir
	$acrhiveEntries = @()
	$acrhiveEntries += FindEntries $readWhdloadSlaveFile $tempDir
	$acrhiveEntries | ForEach-Object { $_.ArchiveFile = $archiveFile }
	$entries += $acrhiveEntries

	# remove temp directory
	if(test-path -path $tempDir)
	{
		remove-item $tempDir -Recurse -Force
	}
}

# create output dir, if it doesn't exist
$outputDir = Split-Path $entriesFile -Parent
if(!(test-path -path $outputDir))
{
	mkdir $outputDir | Out-Null
}

# write entries file
$entries | ForEach-Object{ New-Object PSObject -Property $_ } | export-csv -delimiter ';' -path $entriesFile -NoTypeInformation -Encoding UTF8