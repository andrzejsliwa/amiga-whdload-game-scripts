# Build WHDLoad Slave List
# ------------------------
#
# Author: Henrik N�rfjand Stengaard
# Date:   2016-06-17
#
# A PowerShell script to build whdload slave list csv file with a list of whdload name and path to whdload slave file.
# Note: The script uses drive Z:\ as temp to extract and scan whdload archives, if drive is present. Otherwise it will use [SystemDrive]:\Temp, which is usually C:\Temp.

Param(
	[Parameter(Mandatory=$true)]
	[string]$whdloadPath
)

$sevenZipPath = "$env:ProgramFiles\7-Zip\7z.exe"
$readWhdloadSlavePath = [System.IO.Path]::GetFullPath("read_whdload_slave.ps1")

# use Z:\ as temp, if present
if (Test-Path -path "Z:\")
{
	$tempPath = [System.IO.Path]::Combine("Z:\", [System.IO.Path]::GetRandomFileName())
}
else
{
	$tempPath = [System.IO.Path]::Combine("$env:SystemDrive\Temp", [System.IO.Path]::GetRandomFileName())
}



Function IsWhdloadSlaveFile($filePath)
{
	# read file bytes
	$fileBytes = [System.IO.File]::ReadAllBytes($filePath)

	# return false, if file is less than 50 bytes
	if ($fileBytes.Count -lt 50)
	{
		return $false
	}
	
	# get magic bytes from file
	$fileMagicBytes = New-Object byte[](4)
	[Array]::Copy($fileBytes, 0, $fileMagicBytes, 0, 4)

	# return false, if file doesn't have whdload slave magic bytes
	if (Compare-Object -ReferenceObject @(0, 0, 3, 243) -DifferenceObject $fileMagicBytes)
	{
		return $false
	}

	# get whdload id from temp file
	$whdloadIdBytes = New-Object byte[](8)
	[Array]::Copy($fileBytes, 36, $whdloadIdBytes, 0, 8)
	$whdloadId = [System.Text.Encoding]::ASCII.GetString($whdloadIdBytes)
	
	# return false, if whdload id doesn't match 'WHDLOADS'
	if ($whdloadId -ne 'WHDLOADS')
	{
		return $false
	}

	return $true
}


$whdloadSlaveList = @( """WhdloadName"";""WhdloadSlaveFilePath"";""WhdloadSlaveName"";""WhdloadSlaveCopy"";""ReadmeAppliesTo""" )

foreach($file in (Get-ChildItem -Path $whdloadPath -recurse | Where { !$_.PSIsContainer -and (IsWhdloadSlaveFile $_.FullName) }))
{
	$whdloadName = [System.IO.Path]::GetFileName($file.Directory)
	
	if ($whdloadName -match '^data$')
	{
		$whdloadName = $file.Name -replace '\.slave', ''
	}
	
	$whdloadPathIndex = $file.FullName.IndexOf($whdloadPath) + $whdloadPath.Length + 1
	$whdloadSlaveFilePath = $file.FullName.Substring($whdloadPathIndex, $file.FullName.Length - $whdloadPathIndex)

	$readmeFile = Get-ChildItem -Path $file.Directory -filter readme*.* | Select-Object -First 1
	
	$readmeAppliesTo = $null
	
	if ($readmeFile)
	{
		$readmeAppliesTo = Get-Content $readmeFile.FullName -encoding ascii | Where { $_ -match '(install|patch) applies to' } | Select-String -Pattern "(install|patch) applies to\s*(.*)?" -AllMatches | % { $_.Matches } | % { $_.Groups[2].Value.Replace("""", "").Trim() } | Select-Object -First 1 
	}

	# read whdload slave information and write to text
	$whdloadSlaveOutput = & $readWhdloadSlavePath -path $file.FullName
	
	$whdloadSlaveName = $whdloadSlaveOutput | Select-String -Pattern  "Name\s+=\s+'([^']+)" -AllMatches | % { $_.Matches } | % { $_.Groups[1].Value } | Select-Object -first 1
	$whdloadSlaveCopy = $whdloadSlaveOutput | Select-String -Pattern  "Copy\s+=\s+'([^']+)" -AllMatches | % { $_.Matches } | % { $_.Groups[1].Value } | Select-Object -first 1

	$whdloadSlaveList += ("""" + $whdloadName + """;""" + $whdloadSlaveFilePath + """;""" + $whdloadSlaveName +""";""" + $whdloadSlaveCopy +""";""" + $readmeAppliesTo +"""")
}



# write whdload slave list
$whdloadSlaveListPath = [System.IO.Path]::Combine($ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($whdloadPath), "whdload_slaves.csv")
[System.IO.File]::WriteAllLines($whdloadSlaveListPath, $whdloadSlaveList, [System.Text.Encoding]::UTF8)
