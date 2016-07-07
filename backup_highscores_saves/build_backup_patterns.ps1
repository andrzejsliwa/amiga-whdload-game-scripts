# Build Backup Patterns
# ---------------------
#
# Author: Henrik Nørfjand Stengaard
# Date:   2016-07-07
#
# A PowerShell script to builds an AmigaDOS script, that backup files based on patterns.

# Read highscores and saves patterns
$highscoresSavesPatternsFile = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("highscores_saves_patterns.csv")
$highscoresSavesPatterns = Import-Csv -Delimiter ';' $highscoresSavesPatternsFile

# Backup patterns lines
$backupPatternsLines = @(
	"; Backup patterns script",
	"; ----------------------",
	"; Author: Henrik Noerfjand Stengaard",
	"; Date: 2016-07-07",
	";",
	"; This script is auto-generated by powershell building a list of patterns to backup.",
	"",
	".KEY cachedir/a,backupfile/a",
	".BRA {",
	".KET }",
	""
)

foreach($highscoresSavesPattern in $highscoresSavesPatterns)
{
	$backupPatternsLines += "execute backup_files """ + $highscoresSavesPattern.Name +  """ """ + $highscoresSavesPattern.Patterns +  """ ""{cachedir}"" ""{backupfile}"""
}

# write backup patterns lines file in ascii encoding
$backupPatternsFile = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("backup_patterns")
[System.IO.File]::WriteAllText($backupPatternsFile, [System.Text.Encoding]::ASCII.GetString([System.Text.Encoding]::UTF8.GetBytes($backupPatternsLines -join "`n")), [System.Text.Encoding]::ASCII)
