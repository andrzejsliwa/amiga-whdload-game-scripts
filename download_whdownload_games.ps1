# Download WHDownload Games
# -------------------------
#
# Author: Henrik N�rfjand Stengaard
# Date:   2016-03-01
#
# A PowerShell script to download all games from www.whdownload.com.

$whdownloadGamesPath = "whdownload_games"

# programs 
$sevenZipPath = "$env:ProgramFiles\7-Zip\7z.exe"


# Get whdownload games urls by downloading html and use regex to find game urls
function GetWhdownloadGameUrls($outputPath)
{
	if(!(Test-Path -Path $outputPath))
	{
		md $outputPath | Out-Null
	}		

	$whdownloadBaseUrl = 'http://www.whdownload.com';

	$whdownloadAllHtmlPath = [System.IO.Path]::Combine($whdownloadGamesPath, "whdownload_all.html");
	
	if (Test-Path -Path $whdownloadAllHtmlPath)
	{
		$whdownloadAllHtml = [System.IO.File]::ReadAllText($whdownloadAllHtmlPath)
	}
	else
	{
		$whdownloadAllUrl = $whdownloadBaseUrl + '/games.php?name=%&sort=0&dir=0'

		Write-Host "Downloading whdownload all html...";

		$webclient = New-Object System.Net.WebClient
		$whdownloadAllHtml = [System.Text.Encoding]::UTF8.GetString($webclient.DownloadData($whdownloadAllUrl))
		
		$whdownloadAllHtml | Out-File $whdownloadAllHtmlPath
	}

	$whdownloadGameUrls = $whdownloadAllHtml | Select-String -Pattern "<a\s+href=""(games/[^""<>]+)" -AllMatches | % { $_.Matches } | % { $whdownloadBaseUrl + '/' + $_.Groups[1].Value }

	Write-Host "$($whdownloadGameUrls.Count) whdload games urls found in html"
	
	return $whdownloadGameUrls
}

# Get game index name from first character in game name
function GetGameIndexName($gameName)
{
	if ($gameName -match '^[0-9]') 
	{
		$gameIndexName = "0"
	}
	else
	{
		$gameIndexName = $gameName.Substring(0,1)
	}

	return $gameIndexName
}

# Download whdload game to output path and placing them in indexed folders
function DownloadWhdownloadGamesFromUrls($outputPath, $whdownloadGameUrls)
{
	$webclient = New-Object System.Net.WebClient
	
	For ($i = 0; $i -lt $whdownloadGameUrls.Count; $i++)
	{
		$whdownloadGameUrl = $whdownloadGameUrls[$i]
	
		$whdloadFileName = [System.IO.Path]::GetFileName($whdownloadGameUrl)
		$whdloadGameIndexName = GetGameIndexName $whdloadFileName
		$whdloadGameIndexPath = [System.IO.Path]::Combine($outputPath, $whdloadGameIndexName)
		$whdloadGameFile = [System.IO.Path]::Combine($whdloadGameIndexPath, $whdloadFileName)
		
		if(!(Test-Path -Path $whdloadGameIndexPath))
		{
			md $whdloadGameIndexPath | Out-Null
		}		

		if (Test-Path -Path $whdloadGameFile)
		{
			continue;
		}

		Write-Host -NoNewline "Downloading '$whdloadFileName' ($($i + 1) / $($whdownloadGameUrls.Count))...                                `r"
		
		Start-Sleep -s 1
		
		$webclient.DownloadFile($whdownloadGameUrl, $whdloadGameFile)
	}
	
	Write-Host ""
}

# get archive files using list function in 7-zip
function GetArchiveFiles($archivePath)
{
	$output = & $sevenZipPath l $archivePath

	return $output | Select-String -Pattern "^([^\s]+)\s+([^\s]+)\s+([^\s\d]+)\s+([\d]+)\s+([\d]+)\s+(.+)\s*$" -AllMatches | 
	% { $_.Matches } | 
	% { @{ "Date" = $_.Groups[1].Value; "Time" = $_.Groups[2].Value; "Attr" = $_.Groups[3].Value; "Size" = $_.Groups[4].Value; "Compressed" = $_.Groups[5].Value; "Name" = $_.Groups[6].Value -replace "/", "\" } }
}

# Build whdownload games index
function BuildWhdownloadGamesIndex($outputPath)
{
	$whdownloadAllHtmlPath = [System.IO.Path]::Combine($outputPath, "whdownload_all.html");

	$whdownloadAllHtml = [System.IO.File]::ReadAllText($whdownloadAllHtmlPath)

	$whdownloadIndexPath = [System.IO.Path]::Combine($outputPath, "whdownload_games_index.csv");

	Add-Content $whdownloadIndexPath "Whdownload Game Archive File;Whdload Name;Uncompressed Size;Compressed Size"
	$whdownloadGameMatches = $whdownloadAllHtml | Select-String -Pattern "<a\s+href=""games/.+/([^/""<>]+)"">([^<>]+)" -AllMatches | % { $_.Matches } 
	
	
	ForEach ($whdownloadGameMatch in $whdownloadGameMatches)
	{
		$whdloadFileName = $whdownloadGameMatch.Groups[1].Value
		$whdloadGameName = $whdownloadGameMatch.Groups[2].Value

		$whdloadGameIndexName = GetGameIndexName $whdloadFileName
		$whdloadGameIndexPath = [System.IO.Path]::Combine($outputPath, $whdloadGameIndexName)
		$whdloadGameFile = [System.IO.Path]::Combine($whdloadGameIndexPath, $whdloadFileName)

		$archiveFiles = GetArchiveFiles $whdloadGameFile
		$uncompressedSize = 0;
		$compressedSize = 0;

		ForEach($archiveFile in $archiveFiles)
		{
			$uncompressedSize += $archiveFile.Size;
			$compressedSize += $archiveFile.Compressed;
		}
		
		Add-Content $whdownloadIndexPath "$whdloadFileName;$whdloadGameName;$uncompressedSize;$compressedSize"
	}
}

# 1. Get whdload game urls
$whdownloadGameUrls = GetWhdownloadGameUrls $whdownloadGamesPath

# 2. Download whdownload games from urls
DownloadWhdownloadGamesFromUrls $whdownloadGamesPath $whdownloadGameUrls

# 3. Build whdownload games index
BuildWhdownloadGamesIndex $whdownloadGamesPath
