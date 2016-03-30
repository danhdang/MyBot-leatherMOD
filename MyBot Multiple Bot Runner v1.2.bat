@ECHO OFF

::initialize
SET version=v1.2
SET versiondate=03-29-2016
TITLE MyBot Multiple Bot Runner %version%
SET pro=1

:input

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin modified by leatherneck6017 modified by leatherneck6017
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Select Emulator You Prefer               #
Echo   #  1 - MEmu                                 #
ECHO   #  2 - Bluestacks                           #
ECHO   #  3 - Bluestacks 2                         #
ECHO   #  4 - Droid4X                              #
Echo   #  5 - Nox                                  #
Echo   #  6 - Exit                                 #
ECHO   #                                           #
ECHO   #############################################
ECHO.

::SET /P emu=""

choice /c 123456 /n

IF "%errorlevel%" == "2" (
	ECHO Starting MyBot With Bluestacks
	start MyBot.run.exe %pro% BlueStacks && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	GOTO input
) ELSE IF "%errorlevel%" == "3" (
	ECHO Starting MyBot With Bluestacks 2
	start MyBot.run.exe %pro% BlueStacks2 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	GOTO input
) ELSE IF "%errorlevel%" == "4" (
	ECHO Starting MyBot With Droid4X
	start MyBot.run.exe %pro% Droid4X && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	GOTO input
) ELSE IF "%errorlevel%" == "1" (
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "5" (
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "6" (
	exit
) ELSE (
	ECHO Wrong Input
	GOTO input
)

:memuoptions

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin modified by leatherneck6017
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Select MEmu Instance You Prefer          #
ECHO   #  0 - MEmu                                 #
ECHO   #  1 - MEmu_1                               #
ECHO   #  2 - MEmu_2                               #
ECHO   #  3 - MEmu_3                               #
Echo   #  4 - MEmu_4                               #
Echo   #  5 - MEmu_5                               #
Echo   #  6 - MEmu_6                               #
Echo   #  7 - MEmu_7                               #
Echo   #  8 - Type Instance Name                   #
Echo   #  9 - Back To Main Menu                    #
ECHO   #                                           #
ECHO   #############################################
ECHO.

choice /c 1234567890 /n

IF "%errorlevel%" == "1" (
	ECHO Starting MyBot With MEmu_1
	start MyBot.run.exe %pro% MEmu MEmu_1 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "2" (
	ECHO Starting MyBot With MEmu_2
	start MyBot.run.exe %pro% MEmu MEmu_2 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "3" (
	ECHO Starting MyBot With MEmu_3
	start MyBot.run.exe %pro% MEmu MEmu_3 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "4" (
	ECHO Starting MyBot With MEmu_4
	start MyBot.run.exe %pro% MEmu MEmu_4 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "5" (
	ECHO Starting MyBot With MEmu_5
	start MyBot.run.exe %pro% MEmu MEmu_5 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "6" (
	ECHO Starting MyBot With MEmu_6
	start MyBot.run.exe %pro% MEmu MEmu_6 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "7" (
	ECHO Starting MyBot With MEmu_7
	start MyBot.run.exe %pro% MEmu MEmu_7 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "8" (
	GOTO memutype
) ELSE IF "%errorlevel%" == "9" (
	GOTO input
) ELSE IF "%errorlevel%" == "10" (
	ECHO Starting MyBot With MEmu
	start MyBot.run.exe %pro% MEmu && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
) ELSE (
	ECHO Wrong Input
	GOTO memuoptions
)

:memutype

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin modified by leatherneck6017
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Type MEmu Instance Name And Press Enter  #
ECHO   #  Type 9 And Press Enter To Go Back        #
ECHO   #                                           #
ECHO   #############################################
ECHO.

SET /P memuname="Type MEmu Instance Name: "

IF "%memuname%" == "9" (
	GOTO memuoptions
) ELSE IF "%memuname%" == "" (
	GOTO memutype
) ELSE (
	ECHO Starting MyBot With %memuname%
	start MyBot.run.exe %pro% MEmu %memuname% && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO memuoptions
)

:noxoptions

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin modified by leatherneck6017
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Select Nox Instance You Prefer           #
ECHO   #  0 - Nox                                  #
ECHO   #  1 - Nox1                                 #
ECHO   #  2 - Nox2                                 #
ECHO   #  3 - Nox3                                 #
Echo   #  4 - Nox4                                 #
Echo   #  5 - Nox5                                 #
Echo   #  6 - Nox6                                 #
Echo   #  7 - Nox7                                 #
Echo   #  8 - Type Instance Name                   #
Echo   #  9 - Back To Main Menu                    #
ECHO   #                                           #
ECHO   #############################################
ECHO.

choice /c 1234567890 /n

IF "%errorlevel%" == "1" (
	ECHO Starting MyBot With Nox1
	start MyBot.run.exe %pro% Nox Nox1 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "2" (
	ECHO Starting MyBot With Nox2
	start MyBot.run.exe %pro% Nox Nox2 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "3" (
	ECHO Starting MyBot With Nox3
	start MyBot.run.exe %pro% Nox Nox3 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "4" (
	ECHO Starting MyBot With Nox4
	start MyBot.run.exe %pro% Nox Nox4 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "5" (
	ECHO Starting MyBot With Nox5
	start MyBot.run.exe %pro% Nox Nox5 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "6" (
	ECHO Starting MyBot With Nox6
	start MyBot.run.exe %pro% Nox Nox6 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "7" (
	ECHO Starting MyBot With Nox7
	start MyBot.run.exe %pro% Nox Nox7 && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
) ELSE IF "%errorlevel%" == "8" (
	GOTO noxtype
) ELSE IF "%errorlevel%" == "9" (
	GOTO input
) ELSE IF "%errorlevel%" == "10" (
	ECHO Starting MyBot With Nox
	start MyBot.run.exe %pro% Nox && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	GOTO noxoptions
) ELSE (
	ECHO Wrong Input
	PAUSE
	GOTO noxoptions
)

:noxtype

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin modified by leatherneck6017
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Type Nox Instance Name And Press Enter   #
ECHO   #  Type 9 And Press Enter To Go Back        #
ECHO   #                                           #
ECHO   #############################################
ECHO.

SET /P noxname="Type Nox Instance Name: "

IF "%noxname%" == "9" (
	GOTO noxoptions
) ELSE IF "%noxname%" == "" (
	GOTO noxtype
) ELSE (
	ECHO Starting MyBot With %noxname%
	start MyBot.run.exe %pro% Nox %noxname% && (
		echo MyBot started successfully!
		SET /A pro=%pro%+1
	) || (
		echo Starting MyBot failed!
	)
	PAUSE
	GOTO noxoptions
)