powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_games\whdload_slaves.csv" -queriesFile "games_whdload_data\aeb_whdload_games_details_queries.csv" -queryPatchesFile "games_whdload_data\games_details_query_patches.csv" -noWhdloadName -addFilteredName -addWhdloadSlaveName -removeQueryWordsPattern "^(Demo|Disk|OCS|ECS|AGA|CDTV|CD32)$" -appendQueryText " english"
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_games_aga\whdload_slaves.csv" -queriesFile "games_whdload_data\aeb_whdload_games_aga_details_queries.csv" -queryPatchesFile "games_whdload_data\games_details_query_patches.csv" -noWhdloadName -addFilteredName -addWhdloadSlaveName -removeQueryWordsPattern "^(Demo|Disk|OCS|ECS|AGA|CDTV|CD32)$" -appendQueryText " english"
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_games\whdload_slaves.csv" -queriesFile "games_screenshot_data\aeb_whdload_games_screenshots_queries.csv" -queryPatchesFile "games_screenshot_data\games_screenshot_query_patches.csv" -noWhdloadName -addFilteredName -addWhdloadSlaveName -removeQueryWordsPattern "^(Demo|Disk|OCS|ECS|AGA|CDTV|CD32)$"
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_games_aga\whdload_slaves.csv" -queriesFile "games_screenshot_data\aeb_whdload_games_aga_screenshots_queries.csv" -queryPatchesFile "games_screenshot_data\games_screenshot_query_patches.csv" -noWhdloadName -addFilteredName -addWhdloadSlaveName -removeQueryWordsPattern "^(Demo|Disk|OCS|ECS|AGA|CDTV|CD32)$"
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_demos\whdload_slaves.csv" -queriesFile "demos_whdload_data\aeb_whdload_demos_details_queries.csv" -queryPatchesFile "demos_whdload_data\demos_details_query_patches.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_demos_aga\whdload_slaves.csv" -queriesFile "demos_whdload_data\aeb_whdload_demos_aga_details_queries.csv" -queryPatchesFile "demos_whdload_data\demos_details_query_patches.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_demos\whdload_slaves.csv" -queriesFile "demos_screenshot_data\aeb_whdload_demos_screenshots_queries.csv" -queryPatchesFile "demos_screenshot_data\demos_screenshot_query_patches.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy
powershell -ExecutionPolicy Bypass -File build_whdload_queries.ps1 -whdloadSlavesFile "aeb_whdload_demos_aga\whdload_slaves.csv" -queriesFile "demos_screenshot_data\aeb_whdload_demos_aga_screenshots_queries.csv" -queryPatchesFile "demos_screenshot_data\demos_screenshot_query_patches.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy
