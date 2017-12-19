:: Demos OCS
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Demos_WHDLoad_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs\Demos_WHDLoad_set_OCS.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Demos_WHDLoad_UnpackOnAmiga_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs\Demos_WHDLoad_UnpackOnAmiga_set_OCS.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"

:: Demos AGA
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Demos_WHDLoad_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga\Demos_WHDLoad_set_AGA.csv"
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Demos_WHDLoad_UnpackOnAmiga_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga\Demos_WHDLoad_UnpackOnAmiga_set_AGA.csv"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "demos_whdload_data\eab_whdload_demos_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_demos_3.0_ocs" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "demos_whdload_data\eab_whdload_demos_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_demos_3.0_aga"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "demos_whdload_data\eab_whdload_demos_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_demos_unpack_3.0_ocs" -skipCopying -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "demos_whdload_data\eab_whdload_demos_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_demos_unpack_3.0_aga" -skipCopying

:: Games OCS
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs\Games_WHDLoad_set_OCS.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_UnpackOnAmiga_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs\Games_WHDLoad_UnpackOnAmiga_set_OCS.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"

:: Games AGA
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga\Games_WHDLoad_set_AGA.csv"
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_AGA_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga\Games_WHDLoad_AGA_set_AGA.csv"
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_UnpackOnAmiga_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga\Games_WHDLoad_UnpackOnAmiga_set_AGA.csv"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_3.0_ocs" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_3.0_aga_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_3.0_aga"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_unpack_3.0_ocs" -skipCopying -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_unpack_3.0_aga" -skipCopying

:: Games OCS 4GB
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs_4gb\Games_WHDLoad_set_OCS_4GB.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_UnpackOnAmiga_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs_4gb\Games_WHDLoad_UnpackOnAmiga_set_OCS_4GB.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs_4gb\Games_WHDLoad_set_OCS_4GB.csv,data\eab_whdload_packs_3.0\sets\ocs_4gb\Games_WHDLoad_UnpackOnAmiga_set_OCS_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs_4gb\games_ocs_4gb.csv" -bestVersion

:: Games AGA 4GB
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_set_AGA_4GB.csv" -excludeHardwarePattern "^(cd32|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_AGA_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_AGA_set_AGA_4GB.csv" -excludeHardwarePattern "^(cd32|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\filtered\Games_WHDLoad_UnpackOnAmiga_filtered.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_UnpackOnAmiga_set_AGA_4GB.csv" -excludeHardwarePattern "^(cd32|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_set_AGA_4GB.csv,data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_AGA_set_AGA_4GB.csv,data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_UnpackOnAmiga_set_AGA_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb\games_aga_4gb.csv" -bestVersion

::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -entriesFile "data\eab_whdload_packs_3.0\Games_WHDLoad_entries.csv" -outputEntriesFile "data\eab_whdload_packs_3.0\Games_WHDLoad_ocs_4gb_entries.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_unpack_3.0_ocs_4gb" -skipCopying -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_3.0_aga_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_3.0_aga_4gb" -excludeHardwarePattern "^(cd32|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "games_whdload_data\eab_whdload_games_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_unpack_3.0_aga_4gb" -skipCopying -excludeHardwarePattern "^(cd32|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -bestVersion

:: Games 4GB, 1MB CHIP
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs_4gb\Games_WHDLoad_set_OCS_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs_4gb_1mb_chip\Games_WHDLoad_set_OCS_4GB_1MB_CHIP.csv" -maxWhdloadSlaveBaseMemSize 565248 -maxWhdloadSlaveExpMem 40000
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs_4gb\Games_WHDLoad_UnpackOnAmiga_set_OCS_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\ocs_4gb_1mb_chip\Games_WHDLoad_UnpackOnAmiga_set_OCS_4GB_1MB_CHIP.csv" -maxWhdloadSlaveBaseMemSize 565248 -maxWhdloadSlaveExpMem 40000
::powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_set_AGA_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb_1mb_chip\Games_WHDLoad_set_AGA_4GB.csv" -maxWhdloadSlaveBaseMemSize 565248 -maxWhdloadSlaveExpMem 74000
::powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_AGA_set_AGA_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb_1mb_chip\Games_WHDLoad_AGA_set_AGA_4GB.csv" -maxWhdloadSlaveBaseMemSize 565248 -maxWhdloadSlaveExpMem 74000
::powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga_4gb\Games_WHDLoad_UnpackOnAmiga_set_AGA_4GB.csv" -outputEntriesSetFile "data\eab_whdload_packs_3.0\sets\aga_4gb_1mb_chip\Games_WHDLoad_UnpackOnAmiga_set_AGA_4GB.csv" -maxWhdloadSlaveBaseMemSize 565248 -maxWhdloadSlaveExpMem 74000
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -entriesFile "data\eab_whdload_packs_3.0\Games_WHDLoad_ocs_4gb_entries.csv" -outputEntriesFile "data\eab_whdload_packs_3.0\Games_WHDLoad_ocs_4gb_1mp_chip_entries.csv" -maxWhdloadSlaveBaseMemSize 565248 -maxWhdloadSlaveExpMem 74000
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -entriesFile "games_whdload_data\eab_whdload_games_unpack_3.0_sources.csv" -outputPath "whdload_packs\eab_whdload_packs_3.0\eab_whdload_games_unpack_3.0_ocs_4gb_1mb_chip" -skipCopying -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga|cdtv|cd)$" -excludeLanguagePattern "^(de|fr|it|se|pl|es|cz|fi|gr|cv)" -maxWhdloadSlaveBaseMemSize 565248 -bestVersion

:: HD-Games
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\hd-games\filtered\hd-games_filtered.csv" -outputEntriesSetFile "data\hd-games\sets\hd-games_set_ocs.csv" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\hd-games\filtered\hd-games_filtered.csv" -outputEntriesSetFile "data\hd-games\sets\hd-games_set_aga.csv"

:: HD-Games 4GB
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\hd-games\sets\hd-games_set_ocs.csv" -outputEntriesSetFile "data\hd-games\sets\hd-games_set_ocs_4gb.csv" -maxEntrySize 10000000
powershell -ExecutionPolicy Bypass -File build_entries_set.ps1 -entriesFiles "data\hd-games\sets\hd-games_set_aga.csv" -outputEntriesSetFile "data\hd-games\sets\hd-games_set_aga_4gb.csv" -maxEntrySize 10000000

::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "hd-games_data\hd-games_sources.csv" -outputPath "hd-games\hd-games_ocs" -excludeFlagPattern "(reqaga)" -excludeHardwarePattern "^(cd32|aga)$"
::powershell -ExecutionPolicy Bypass -File filter_eab_whdload_packs.ps1 -sourcesFile "hd-games_data\hd-games_sources.csv" -outputPath "hd-games\hd-games_aga"
