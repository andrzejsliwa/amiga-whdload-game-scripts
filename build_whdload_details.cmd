::Obsolete
::powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "demos_whdload_data\aeb_whdload_demos_details_queries.csv" -detailsSourcesFile "demos_whdload_data\demos_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "demos_whdload_data\aeb_whdload_demos_details.csv" -noExactWhdloadNameMatching -noExactFilteredNameMatching -noExactWhdloadSlaveNameMatching
::powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "demos_whdload_data\aeb_whdload_demos_aga_details_queries.csv" -detailsSourcesFile "demos_whdload_data\demos_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "demos_whdload_data\aeb_whdload_demos_aga_details.csv" -noExactWhdloadNameMatching -noExactFilteredNameMatching -noExactWhdloadSlaveNameMatching
::powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "games_whdload_data\aeb_whdload_games_details_queries.csv" -detailsSourcesFile "games_whdload_data\games_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "games_whdload_data\aeb_whdload_games_details.csv"
::powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "games_whdload_data\aeb_whdload_games_aga_details_queries.csv" -detailsSourcesFile "games_whdload_data\games_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "games_whdload_data\aeb_whdload_games_aga_details.csv"
::powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "games_whdload_data\aeb_whdload_games_cd32_details_queries.csv" -detailsSourcesFile "games_whdload_data\games_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "games_whdload_data\aeb_whdload_games_cd32_details.csv"

::Demos
powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "demos_whdload_data\aeb_whdload_demos_ocs_details_queries.csv" -detailsSourcesFile "demos_whdload_data\demos_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "demos_whdload_data\aeb_whdload_demos_ocs_details.csv" -noExactWhdloadNameMatching -noExactFilteredNameMatching -noExactWhdloadSlaveNameMatching
powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "demos_whdload_data\aeb_whdload_demos_aga_details_queries.csv" -detailsSourcesFile "demos_whdload_data\demos_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "demos_whdload_data\aeb_whdload_demos_aga_details.csv" -noExactWhdloadNameMatching -noExactFilteredNameMatching -noExactWhdloadSlaveNameMatching

::Games
powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "games_whdload_data\aeb_whdload_games_ocs_details_queries.csv" -detailsSourcesFile "games_whdload_data\games_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "games_whdload_data\aeb_whdload_games_ocs_details.csv"
powershell -ExecutionPolicy Bypass -File build_whdload_details.ps1 -whdloadSlavesFile "games_whdload_data\aeb_whdload_games_aga_details_queries.csv" -detailsSourcesFile "games_whdload_data\games_details_sources.csv" -minScore 1 -whdloadSlavesDetailsFile "games_whdload_data\aeb_whdload_games_aga_details.csv"
