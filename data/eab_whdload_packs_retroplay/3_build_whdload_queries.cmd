:: Demos
powershell -ExecutionPolicy Bypass -File ..\..\build_whdload_queries.ps1 -entriesFiles "filtered\demos_filtered.csv" -queryPatchesFile "screenshots\demos_screenshot_query_patches.csv" -queriesFile "screenshots\demos_screenshots\demos_screenshot_queries.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy
powershell -ExecutionPolicy Bypass -File ..\..\build_whdload_queries.ps1 -entriesFiles "filtered\demos_filtered.csv" -queryPatchesFile "details\demos_detail_query_patches.csv" -queriesFile "details\demos_details\demos_detail_queries.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy

:: Games
powershell -ExecutionPolicy Bypass -File ..\..\build_whdload_queries.ps1 -entriesFiles "filtered\games_filtered.csv,filtered\games-beta-unreleased_filtered.csv" -queryPatchesFile "screenshots\games_screenshot_query_patches.csv" -queriesFile "screenshots\games_screenshots\games_screenshot_queries.csv" -noWhdloadName -addFilteredName -addWhdloadSlaveName -removeQueryWordsPattern "^(Demo|Disk|OCS|ECS|AGA|CDTV|CD32)$"
powershell -ExecutionPolicy Bypass -File ..\..\build_whdload_queries.ps1 -entriesFiles "filtered\games_filtered.csv,filtered\games-beta-unreleased_filtered.csv" -queryPatchesFile "details\games_detail_query_patches.csv" -queriesFile "details\games_details\games_detail_queries.csv" -noWhdloadName -addFilteredName -addWhdloadSlaveName -removeQueryWordsPattern "^(Demo|Disk|OCS|ECS|AGA|CDTV|CD32)$"