powershell -ExecutionPolicy Bypass -File build_whdload_screenshot_queries.ps1 -whdloadSlavesFile "aeb_whdload_games\whdload_slaves.csv" -screenshotQueriesFile "aeb_whdload_pack_games_screenshot_queries.csv" -addFilteredName -addWhdloadSlaveName -removeQueryTextPattern "(demo)"
powershell -ExecutionPolicy Bypass -File build_whdload_screenshot_queries.ps1 -whdloadSlavesFile "aeb_whdload_games_aga\whdload_slaves.csv" -screenshotQueriesFile "aeb_whdload_pack_games_aga_screenshot_queries.csv" -addFilteredName -addWhdloadSlaveName -removeQueryTextPattern "(demo)"
powershell -ExecutionPolicy Bypass -File build_whdload_screenshot_queries.ps1 -whdloadSlavesFile "aeb_whdload_packs\demos_whdload\combined\whdload_slaves.csv" -screenshotQueriesFile "aeb_whdload_pack_demos_screenshot_queries.csv" -addWhdloadSlaveName -addWhdloadSlaveCopy 
