:: Demos
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs\Demos_WHDLoad_set_OCS.csv,data\eab_whdload_packs_3.0\sets\ocs\Demos_WHDLoad_UnpackOnAmiga_set_OCS.csv" -outputPath "menus\eab_whdload_packs_3.0\demos_ocs" -assignName "A-Demos" -detailsFiles "data\eab_whdload_packs_3.0\details\demos_details\demos_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\demos_screenshots\screenshots.csv" -ags2 -ags2NameFormat "[$DetailName] - [$DetailGroups]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName] - [$DetailGroups]" -hstwbNameFormat "[$DetailName] - [$DetailGroups]" -detailColumns "Name,Version,Groups,Type,Party,Rank,Year" -hstLauncher -hstLauncherNameFormat "[$DetailName]"
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga\Demos_WHDLoad_set_AGA.csv,data\eab_whdload_packs_3.0\sets\aga\Demos_WHDLoad_UnpackOnAmiga_set_AGA.csv" -outputPath "menus\eab_whdload_packs_3.0\demos_aga" -assignName "A-Demos" -detailsFiles "data\eab_whdload_packs_3.0\details\demos_details\demos_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\demos_screenshots\screenshots.csv" -aga -ags2 -ags2NameFormat "[$DetailName] - [$DetailGroups]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName] - [$DetailGroups]" -hstwbNameFormat "[$DetailName] - [$DetailGroups]" -detailColumns "Name,Version,Groups,Type,Party,Rank,Year" -hstLauncher -hstLauncherNameFormat "[$DetailName]"

:: Games
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs\Games_WHDLoad_set_OCS.csv,data\eab_whdload_packs_3.0\sets\ocs\Games_WHDLoad_UnpackOnAmiga_set_OCS.csv" -outputPath "menus\eab_whdload_packs_3.0\games_ocs" -assignName "A-Games" -detailsFiles "data\eab_whdload_packs_3.0\details\games_details\games_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\games_screenshots\screenshots.csv" -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -hstLauncher -hstLauncherNameFormat "[$DetailName]"
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga\Games_WHDLoad_set_AGA.csv,data\eab_whdload_packs_3.0\sets\aga\Games_WHDLoad_AGA_set_AGA.csv,data\eab_whdload_packs_3.0\sets\aga\Games_WHDLoad_UnpackOnAmiga_set_AGA.csv" -outputPath "menus\eab_whdload_packs_3.0\games_aga" -assignName "A-Games" -detailsFiles "data\eab_whdload_packs_3.0\details\games_details\games_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\games_screenshots\screenshots.csv" -aga -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -hstLauncher -hstLauncherNameFormat "[$DetailName]"

:: Games 4GB
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs_4gb\games_ocs_4gb.csv" -outputPath "menus\eab_whdload_packs_3.0\games_ocs_4gb" -assignName "A-Games" -detailsFiles "data\eab_whdload_packs_3.0\details\games_details\games_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\games_screenshots\screenshots.csv" -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -hstLauncher -hstLauncherNameFormat "[$DetailName]"
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\aga_4gb\games_aga_4gb.csv" -outputPath "menus\eab_whdload_packs_3.0\games_aga_4gb" -assignName "A-Games" -detailsFiles "data\eab_whdload_packs_3.0\details\games_details\games_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\games_screenshots\screenshots.csv" -aga -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -hstLauncher -hstLauncherNameFormat "[$DetailName]"

:: Games 4GB, 1MB CHIP
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\eab_whdload_packs_3.0\sets\ocs_4gb_1mb_chip\Games_WHDLoad_set_OCS_4GB_1MB_CHIP.csv,data\eab_whdload_packs_3.0\sets\ocs_4gb_1mb_chip\Games_WHDLoad_UnpackOnAmiga_set_OCS_4GB_1MB_CHIP.csv" -outputPath "menus\eab_whdload_packs_3.0\games_ocs_4gb_1mb_chip" -assignName "A-Games" -detailsFiles "data\eab_whdload_packs_3.0\details\games_details\games_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\games_screenshots\screenshots.csv" -hstwbNameFormat "[$DetailName]" -hstLauncher -hstLauncherNameFormat "[$DetailName]"

:: HD-Games
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\hd-games\sets\hd-games_set_ocs.csv" -outputPath "menus\hd-games\hd-games_ocs" -assignName "HD-Games" -detailsFiles "data\hd-games\details\hd-games_details.csv" -screenshotsFiles "data\hd-games\screenshots\hd-games_screenshots\screenshots.csv" -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -noDataIndex -hstLauncher -hstLauncherNameFormat "[$DetailName]"
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\hd-games\sets\hd-games_set_aga.csv" -outputPath "menus\hd-games\hd-games_aga" -assignName "HD-Games" -detailsFiles "data\hd-games\details\hd-games_details.csv" -screenshotsFiles "data\hd-games\screenshots\hd-games_screenshots\screenshots.csv" -aga -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -noDataIndex -hstLauncher -hstLauncherNameFormat "[$DetailName]"

:: HD-Games 4GB
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\hd-games\sets\hd-games_set_ocs_4gb.csv" -outputPath "menus\hd-games\hd-games_ocs_4gb" -assignName "HD-Games" -detailsFiles "data\hd-games\details\hd-games_details.csv" -screenshotsFiles "data\hd-games\screenshots\hd-games_screenshots\screenshots.csv" -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -noDataIndex -hstLauncher -hstLauncherNameFormat "[$DetailName]"
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -entriesFiles "data\hd-games\sets\hd-games_set_aga_4gb.csv" -outputPath "menus\hd-games\hd-games_aga_4gb" -assignName "HD-Games" -detailsFiles "data\hd-games\details\hd-games_details.csv" -screenshotsFiles "data\hd-games\screenshots\hd-games_screenshots\screenshots.csv" -aga -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -iGame -iGameNameFormat "[$DetailName]" -hstwbNameFormat "[$DetailName]" -detailColumns "Name,Language,Version,Publisher,Developer,Year,Genre,Players" -noDataIndex -hstLauncher -hstLauncherNameFormat "[$DetailName]"

:: HD-Games 4GB, 1MB CHIP
powershell -ExecutionPolicy Bypass -File build_menu.ps1 -sourcesFile "data\hd-games\sets\hd-games_set_ocs_4gb_1mb_sources.csv" -outputPath "menus\hd-games\hd-games_ocs_4gb_1mb_chip" -detailsFiles "data\eab_whdload_packs_3.0\details\games_details\games_details.csv,data\hd-games\details\hd-games_details.csv" -screenshotsFiles "data\eab_whdload_packs_3.0\screenshots\games_screenshots\screenshots.csv,data\hd-games\screenshots\hd-games_screenshots\screenshots.csv" -ags2 -ags2NameFormat "[$DetailName]" -ags2MenuItemRunTemplateFile "ags2_menu_item_run_template.txt" -hstwbNameFormat "[$DetailName]" -hstLauncher -hstLauncherNameFormat "[$DetailName]" -noDataIndex