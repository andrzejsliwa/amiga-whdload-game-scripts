powershell -ExecutionPolicy Bypass -File build_whdload_screenshots_new.ps1 -screenshotQueriesFile "demos_screenshot_data\aeb_whdload_demos_screenshot_queries.csv" -screenshotSourcesFile "demos_screenshot_data\demos_screenshot_sources.csv" -outputPath "screenshots\aeb_whdload_demos" -ignorePriority
powershell -ExecutionPolicy Bypass -File build_whdload_screenshots_new.ps1 -screenshotQueriesFile "demos_screenshot_data\aeb_whdload_demos_aga_screenshot_queries.csv" -screenshotSourcesFile "demos_screenshot_data\demos_screenshot_sources.csv" -outputPath "screenshots\aeb_whdload_demos_aga" -ignorePriority
powershell -ExecutionPolicy Bypass -File build_whdload_screenshots_new.ps1 -screenshotQueriesFile "games_screenshot_data\aeb_whdload_games_screenshot_queries.csv" -screenshotSourcesFile "games_screenshot_data\games_screenshot_sources.csv" -outputPath "screenshots\aeb_whdload_games" -minScore 1 -ignorePriority
powershell -ExecutionPolicy Bypass -File build_whdload_screenshots_new.ps1 -screenshotQueriesFile "games_screenshot_data\aeb_whdload_games_aga_screenshot_queries.csv" -screenshotSourcesFile "games_screenshot_data\games_screenshot_sources.csv" -outputPath "screenshots\aeb_whdload_games_aga" -minScore 1 -ignorePriority
