call %*
GOTO END

REM ----------------------------------------------------------------------------
REM Versioning
REM ----------------------------------------------------------------------------
:EstablishVersions
    SET version_double_commander=1.0.9483
    SET version_double_commander_kit=%version_double_commander:0.=0a-%
    SET version_git=2.29.2
    SET version_git_windows_compilation=.windows.2
    SET version_notepad_plus_plus=7.9.1
    SET version_pea_zip=7.4.2
    SET version_php=7.4.12
    SET version_putty=0.74
    SET version_python36x_major_minor=3.6
    SET version_python36x_major_minor_build=3.6.8
    SET version_python37x_major_minor=3.7
    SET version_python37x_major_minor_build=3.7.9
    SET version_python38x_major_minor=3.8
    SET version_python38x_major_minor_build=3.8.6
    SET version_python39x_major_minor=3.9
    SET version_python39x_major_minor_build=3.9.0
    SET version_tree_size=4.4.2
    SET version_vlc=3.0.11
    SET version_winscp=5.17.8
GOTO END

:EstablishDownloadingSourceAddress
    SET url_double_commander=https://github.com/double-commander/doublecmd/releases/download/%version_double_commander%/DoubleCmd-%version_double_commander_kit%-Win32X64.7z
    SET version_git_enhanced=%version_git%
    IF "%version_git_windows_compilation%"==".windows.2" (
        SET version_git_enhanced=%version_git%.2
    )
    SET git_downloaded_kit=PortableGit-%version_git_enhanced%-64-bit.7z.exe
    SET url_git=https://github.com/git-for-windows/git/releases/download/v%version_git%%version_git_windows_compilation%/%git_downloaded_kit%
    SET url_notepad_plus_plus=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v%version_notepad_plus_plus%/npp.%version_notepad_plus_plus%.portable.x64.zip
    SET url_peazip=https://github.com/giorgiotani/PeaZip/releases/download/%version_pea_zip%/peazip_portable-%version_pea_zip%.WIN64.zip
    SET url_php=https://windows.php.net/downloads/releases/php-%version_php%-nts-Win32-vc15-x64.zip
    SET url_putty=https://the.earth.li/~sgtatham/putty/latest/w64/putty.zip
    SET url_python_pip=https://bootstrap.pypa.io/get-pip.py
    SET url_python37x=https://www.python.org/ftp/python/%version_python37x_major_minor_build%/python-%version_python37x_major_minor_build%-embed-amd64.zip
    SET url_python37x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python37x_major_minor%/virtualenv.pyz
    SET url_python38x=https://www.python.org/ftp/python/%version_python38x_major_minor_build%/python-%version_python38x_major_minor_build%-embed-amd64.zip
    SET url_python38x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python38x_major_minor%/virtualenv.pyz
    SET url_python39x=https://www.python.org/ftp/python/%version_python39x_major_minor_build%/python-%version_python39x_major_minor_build%-embed-amd64.zip
    SET url_python39x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python39x_major_minor%/virtualenv.pyz
    SET url_tree_size=https://downloads.jam-software.de/treesize_free/TreeSizeFree-Portable.zip
    SET url_vlc=https://download.videolan.org/pub/videolan/vlc/%version_vlc%/win64/vlc-%version_vlc%-win64.zip
    SET url_winscp=https://pilotfiber.dl.sourceforge.net/project/winscp/WinSCP/%version_winscp%/WinSCP-%version_winscp%-Portable.zip
GOTO END

:EstablishInstallingFolders
    SET path_downloads=C:\www\Downloads\
    SET path_web_applications=C:\www\App\
    SET path_developer_applications=C:\www\AppForDeveloper\
    SET path_developer_applications_double_commander=%path_developer_applications%DoubleCommander\%version_double_commander%-64bit
    SET path_developer_applications_git=%path_developer_applications%Git\%version_git_enhanced%-64bit
    SET path_developer_applications_notepad_plus_plus=%path_developer_applications%Notepad++\%version_notepad_plus_plus%-64bit
    SET path_developer_applications_peazip=%path_developer_applications%PeaZip\%version_pea_zip%-64bit
    SET path_developer_applications_php=%path_web_applications%PHP\%version_php%-64bit
    SET path_developer_applications_putty=%path_developer_applications%PuTTY\%version_putty%-64bit
    SET path_developer_applications_python37x=%path_developer_applications%Python\%version_python37x_major_minor_build%-64bit
    SET path_developer_applications_python37x_modules=%path_developer_applications%Python\%version_python37x_major_minor_build%-modules
    SET path_developer_applications_python38x=%path_developer_applications%Python\%version_python38x_major_minor_build%-64bit
    SET path_developer_applications_python38x_modules=%path_developer_applications%Python\%version_python38x_major_minor_build%-modules
    SET path_developer_applications_python39x=%path_developer_applications%Python\%version_python39x_major_minor_build%-64bit
    SET path_developer_applications_python39x_modules=%path_developer_applications%Python\%version_python39x_major_minor_build%-modules
    SET path_developer_applications_tree_size=%path_developer_applications%TreeSize\%version_tree_size%-32bit
    SET path_developer_applications_vlc=%path_developer_applications%VLC\%version_vlc%-64bit
    SET path_developer_applications_winscp=%path_developer_applications%WinSCP\%version_winscp%-64bit
GOTO END

REM ----------------------------------------------------------------------------
REM Common functionalities
REM ----------------------------------------------------------------------------

:ConsideredInstallChoice_Invalid
    SET variable_invalid_install_choice_typed=YES
GOTO Menu__InstallationsToDo

:CreateDownloadsFolder
    IF NOT EXIST "%path_downloads%" (
        ECHO As the %path_downloads% does not exists, will be created
        md "%path_downloads%"
    )
GOTO END

:DecisionToQuitTakeFinalMessage
    ECHO ...
    ECHO Sorry to see you leave you so soon, thanks and good-bye!
GOTO END

:InitiateGlobalVariablesForInstallation
    CALL :EstablishVersions
    CALL :EstablishDownloadingSourceAddress
    CALL :EstablishInstallingFolders
    SET custom_user_agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0
GOTO END

:RemoveDownloadsFolderWithAnyContent
    IF EXIST %path_downloads% (
        RMDIR /Q /S %path_downloads%
    )
    SET CHOICE_INSTALL=0
GOTO END

:RemoveFolderWithOlderVersion
    IF EXIST %path_older_version% (
        RMDIR /Q /S %path_older_version%
    )
GOTO END

REM ----------------------------------------------------------------------------
REM End of Project Specific variable initialize
REM Start of Main Part
REM ----------------------------------------------------------------------------

:InitiateOrUpdateFrameworkInfrastructure__DoubleCommander
    CALL :CreateDownloadsFolder
    IF NOT EXIST "%path_developer_applications_double_commander%\doublecmd.exe" (
        CALL :InitiateOrUpdateFrameworkInfrastructure__PeaZip
        :: Donwload the archive but only if is not already done
        IF NOT EXIST "%path_downloads%DoubleCmd-%version_double_commander_kit%-Win32X64.7z" (
            ECHO Will download portable version of Double Commander for Windows, using PowerShell
            ECHO powershell -command "$cli=New-Object System.Net.WebClient;$cli.Headers['User-Agent']='%custom_user_agent%';$cli.DownloadFile('%url_double_commander%','%path_downloads%DoubleCmd-%version_double_commander_kit%-Win32X64.7z');"
            REM powershell -command "$cli=New-Object System.Net.WebClient;$cli.Headers['User-Agent']='%custom_user_agent%';$cli.DownloadFile('%url_double_commander%','%path_downloads%DoubleCmd-%version_double_commander_kit%-Win32X64.7z')"
            powershell -command "$cli=New-Object System.Net.WebClient;$cli.Headers['User-Agent']='%custom_user_agent%';$cli.DownloadFile('%url_double_commander%','%path_downloads%DoubleCmd-%version_double_commander_kit%-Win32X64.7z');" > out.log
        )
        IF EXIST "%path_downloads%DoubleCmd-%version_double_commander_kit%-Win32X64.7z" (
            IF NOT EXIST "%path_developer_applications_double_commander%" (
                MD %path_developer_applications_double_commander%
            )
            ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
            %path_developer_applications_peazip%\res\7z\7z.exe x %path_downloads%DoubleCmd-%version_double_commander_kit%-Win32X64.7z -o%path_developer_applications_double_commander%
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__Git
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_git%\bin\git.exe (
        IF NOT EXIST %path_downloads%%git_downloaded_kit% (
            ECHO Will download portable version of Git application for Windows, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_git%','%path_downloads%%git_downloaded_kit%')"
        )
        IF EXIST %path_downloads%%git_downloaded_kit% (
            IF NOT EXIST %path_downloads%PortableGit (
                ECHO Will extract downloaded kit of Git for Windows to a folder from where it will be used
                %path_downloads%%git_downloaded_kit% -y
            )
        )
        IF NOT EXIST %path_developer_applications_git% (
            MD %path_developer_applications_git%
            ECHO Will move files
            XCOPY %path_downloads%PortableGit %path_developer_applications_git% /c /s /r /h /y
        )
    )
    IF EXIST %path_developer_applications_git%\bin\git.exe (
        IF EXIST %path_downloads%PortableGit (
            RMDIR /Q /S %path_downloads%PortableGit
        )
        IF EXIST %path_downloads%%git_downloaded_kit% (
            ECHO Will remove/delete portable version of Git application for Windows as no longer needed and occupies space for nothing
            DEL %path_downloads%%git_downloaded_kit%
        )
    )
    for %%i in (2.26.1 2.26.2 2.27.0 2.28.0 2.29.0 2.29.1 2.29.2) do (
        IF EXIST "%path_developer_applications%Git\%%i-64bit" (
            ECHO Removing %path_developer_applications%Git\%%i-64bit
            RMDIR /Q /S %path_developer_applications%Git\%%i-64bit
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__NotepadPlusPlus
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_notepad_plus_plus%\notepad++.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%npp.%version_notepad_plus_plus%.bin.x64.zip (
            ECHO Will download portable version of Notepad++ for Windows, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_notepad_plus_plus%','%path_downloads%notepad.zip')"
        )
        IF EXIST %path_downloads%notepad.zip (
            ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
            powershell.exe Expand-Archive -Path %path_downloads%notepad.zip -DestinationPath %path_developer_applications_notepad_plus_plus%
        )
    )
    for %%i in (7.8.1 7.8.2 7.8.3 7.8.4 7.8.5 7.8.6 7.8.7 7.8.8 7.8.9) do (
        IF EXIST "%path_developer_applications%Notepad++\%%i-64bit" (
            IF EXIST "%path_developer_applications%Notepad++\%%i-64bit\session.xml" (
                COPY %path_developer_applications%Notepad++\%%i-64bit\session.xml %path_developer_applications_notepad_plus_plus%
            )
            IF EXIST "%path_developer_applications%Notepad++\%%i-64bit\config.xml" (
                COPY %path_developer_applications%Notepad++\%%i-64bit\config.xml %path_developer_applications_notepad_plus_plus%
            )
            IF EXIST "%path_developer_applications%Notepad++\%%i-64bit\backup\" (
                XCOPY "%path_developer_applications%Notepad++\%%i-64bit\backup\" %path_developer_applications_notepad_plus_plus%\backup\ /c /s /r /h /y
            )
            ECHO Removing %path_developer_applications%Notepad++\%%i-64bit
            RMDIR /Q /S %path_developer_applications%Notepad++\%%i-64bit
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PeaZip
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_peazip%\peazip.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%peazip_portable-%version_pea_zip%.WIN64.zip (
            ECHO Will download portable version of Peazip for Windows, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_peazip%','%path_downloads%peazip_portable-%version_pea_zip%.WIN64.zip')"
        )
        IF EXIST %path_downloads%peazip_portable-%version_pea_zip%.WIN64.zip (
            ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
            powershell.exe Expand-Archive -Path %path_downloads%peazip_portable-%version_pea_zip%.WIN64.zip -DestinationPath %path_downloads%
        )
        IF NOT EXIST %path_developer_applications_peazip% (
            MD %path_developer_applications_peazip%
            ECHO Will move files
            XCOPY %path_downloads%peazip_portable-%version_pea_zip%.WIN64 %path_developer_applications_peazip% /c /s /r /h /y
        )
    )
    for %%i in (7.2.0 7.2.1 7.2.2 7.3.0 7.3.1 7.3.2 7.4.0 7.4.1) do (
        IF EXIST "%path_developer_applications%PeaZip\%%i-64bit" (
            ECHO Removing %path_developer_applications%PeaZip\%%i-64bit
            RMDIR /Q /S %path_developer_applications%PeaZip\%%i-64bit
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__Php
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_php%\php.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%php.zip (
            ECHO Will download portable version of PHP for Windows, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_php%','%path_downloads%php.zip')"
        )
        IF EXIST %path_downloads%php.zip (
            ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
            powershell.exe Expand-Archive -Path %path_downloads%php.zip -DestinationPath %path_developer_applications_php%
        )
    )
    for %%i in (7.4.0 7.4.1 7.4.2 7.4.3 7.4.4 7.4.5 7.4.6 7.4.7 7.4.8 7.4.9 7.4.10 7.4.11) do (
        IF EXIST %path_web_applications%PHP\%%i-64bit (
            ECHO Removing %path_web_applications%PHP\%%i-64bit
            RMDIR /Q /S %path_web_applications%PHP\%%i-64bit
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PuTTY
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_putty%\PUTTY.EXE (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%putty.zip (
            ECHO Will download portable version of PuTTY, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_putty%','%path_downloads%putty.zip')"
        )
        IF EXIST %path_downloads%putty.zip (
            IF NOT EXIST %path_developer_applications_putty% (
                MD %path_developer_applications_putty%
                ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
                powershell.exe Expand-Archive -Path %path_downloads%putty.zip -DestinationPath %path_developer_applications_putty%
            )
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PythonWorkingVersion
    CALL :SetPythonGlobalVariables
    CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseLatest
    CALL :SetPythonGlobalVariables
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseLatest
    SET path_developer_applications_python=%path_developer_applications_python39x%
    SET path_developer_applications_python_modules=%path_developer_applications_python39x_modules%
    SET version_python_major_minor_build=%version_python39x_major_minor_build%
    SET url_python=%url_python39x%
    SET url_python_virtualenv=%url_python39x_virtualenv%
    SET python_compiled_modules_archive=python39.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
    SET applied_virtual_environment_folder=virtual_environment_%version_python39x_major_minor%.x
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PythonStableReleasePriorToLatest
    SET path_developer_applications_python=%path_developer_applications_python38x%
    SET path_developer_applications_python_modules=%path_developer_applications_python38x_modules%
    SET version_python_major_minor_build=%version_python38x_major_minor_build%
    SET url_python=%url_python38x%
    SET url_python_virtualenv=%url_python38x_virtualenv%
    SET python_compiled_modules_archive=python38.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
    SET applied_virtual_environment_folder=virtual_environment_%version_python38x_major_minor%.x
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseTwoMinorVersionsPriorToLatest
    SET path_developer_applications_python=%path_developer_applications_python37x%
    SET path_developer_applications_python_modules=%path_developer_applications_python37x_modules%
    SET version_python_major_minor_build=%version_python37x_major_minor_build%
    SET url_python=%url_python37x%
    SET url_python_virtualenv=%url_python37x_virtualenv%
    SET python_compiled_modules_archive=python37.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
    SET applied_virtual_environment_folder=virtual_environment_%version_python37x_major_minor%.x
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseThreeMinorVersionsPriorToLatest
    SET path_developer_applications_python=%path_developer_applications_python36x%
    SET path_developer_applications_python_modules=%path_developer_applications_python36x_modules%
    SET version_python_major_minor_build=%version_python36x_major_minor_build%
    SET url_python=%url_python36x%
    SET url_python_virtualenv=%url_python36x_virtualenv%
    SET python_compiled_modules_archive=python36.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
    SET applied_virtual_environment_folder=virtual_environment_%version_python36x_major_minor%.x
GOTO END

:SetPythonGlobalVariables
    REM IF NOT DEFINED PY_PIP (
        REM ECHO Setting global variables for Python %version_python_major_minor_build%
        SET PYTHONHOME=%path_developer_applications_python%
        SET PYTHONPATH=%path_developer_applications_python%
        SET PY_PIP=%path_developer_applications_python%\Scripts
        SET PY_LIBS=%path_developer_applications_python%\Lib;%path_developer_applications_python%\Lib\site-packages
        SET PATH="%path_developer_applications_python%;%PY_PIP%;%PY_LIBS%;%PATH%"
    REM )
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__Python
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_python%\python.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip (
            ECHO Will download portable version of Python for Windows, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_python%','%path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip')"
        )
        IF EXIST %path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip (
            ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
            powershell.exe Expand-Archive -Path %path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip -DestinationPath %path_developer_applications_python%
        )
    ) ELSE (
        IF EXIST %path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip (
            ECHO Will remove/delete kit of Python for Windows as no longer needed and occupies space for nothing
            DEL %path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip
        )
    )
    IF EXIST %path_developer_applications_python%\%python_compiled_modules_archive% (
        IF NOT EXIST %path_developer_applications_python%\DLLs (
            MD %path_developer_applications_python%\DLLs
            ECHO Will extract Python compiled modules, using PowerShell from %path_developer_applications_python%\%python_compiled_modules_archive%
            powershell.exe Expand-Archive -Path %path_developer_applications_python%\%python_compiled_modules_archive% -DestinationPath %path_developer_applications_python%\DLLs
        )
    )
    IF NOT EXIST "%path_developer_applications_python%\Scripts\pip.exe" (
        IF NOT EXIST "%path_downloads%get-pip.py" (
            ECHO Will download Python Package Manager, using PowerShell
            powershell "(new-object System.Net.WebClient).DownloadFile('%url_python_pip%','%path_downloads%get-pip.py')"
        )
        IF EXIST "%path_downloads%get-pip.py" (
            ECHO Initialize Python Package Manager: PIP
            %path_developer_applications_python%\python.exe %path_downloads%get-pip.py --no-warn-script-location
        )
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__TreeSize
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_tree_size%\TreeSizeFree.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%TreeSizeFree-Portable.zip (
            ECHO Will download portable version of TreeSize, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_tree_size%','%path_downloads%TreeSizeFree-Portable.zip')"
        )
        IF EXIST %path_downloads%TreeSizeFree-Portable.zip (
            IF NOT EXIST %path_developer_applications_tree_size% (
                MD %path_developer_applications_tree_size%
                ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
                powershell.exe Expand-Archive -Path %path_downloads%TreeSizeFree-Portable.zip -DestinationPath %path_developer_applications_tree_size%
            )
        )
    )
    SET path_older_version=%path_developer_applications%TreeSize\4.4.0-32bit
    CALL :RemoveFolderWithOlderVersion
    SET path_older_version=%path_developer_applications%TreeSize\4.4.1-32bit
    CALL :RemoveFolderWithOlderVersion
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__VLC
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_vlc%\vlc.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%vlc-64bit-portable.zip (
            ECHO Will download portable version of VLC, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_vlc%','%path_downloads%vlc-64bit-portable.zip')"
        )
        IF EXIST %path_downloads%vlc-64bit-portable.zip (
            IF NOT EXIST %path_downloads%vlc-%version_vlc% (
                ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
                powershell.exe Expand-Archive -Path %path_downloads%vlc-64bit-portable.zip -DestinationPath %path_downloads%
            )
            IF NOT EXIST %path_developer_applications_vlc%\vlc.exe (
                MD %path_developer_applications_vlc%
                ECHO Will move files
                XCOPY %path_downloads%vlc-%version_vlc% %path_developer_applications_vlc% /c /s /r /h /y
                RMDIR /Q /S %path_downloads%vlc-%version_vlc%
            )
        )
    )
    for %%i in (3.0.8 3.0.9 3.0.10) do (
        IF EXIST %path_developer_applications%VLC\%%i-64bit (
            ECHO Removing %path_developer_applications%VLC\%%i-64bit
            RMDIR /Q /S %path_developer_applications%VLC\%%i-64bit
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__WinSCP
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_winscp%\WinSCP.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%winscp-portable.zip (
            ECHO Will download portable version of WinSCP, using PowerShell
            powershell -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_winscp%','%path_downloads%winscp-portable.zip')"
        )
        IF EXIST %path_downloads%winscp-portable.zip (
            IF NOT EXIST %path_developer_applications_winscp% (
                MD %path_developer_applications_winscp%
                ECHO Will extract downloaded kit to a folder from where it will be used, using PowerShell
                powershell.exe Expand-Archive -Path %path_downloads%winscp-portable.zip -DestinationPath %path_developer_applications_winscp%
            )
        )
    )
    for %%i in (5.17.5 5.17.6 5.17.7) do (
        IF EXIST %path_developer_applications%WinSCP\%%i-64bit (
            ECHO Removing %path_developer_applications%WinSCP\%%i-64bit
            RMDIR /Q /S %path_developer_applications%WinSCP\%%i-64bit
        )
    )
    REM CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:Menu__InstallationsToDo
    IF NOT DEFINED CHOICE_INSTALL (
        CLS
    )
    ECHO ===========================================================================================================
    ECHO Installation to Perform, released on %this_script_version%
    ECHO ===========================================================================================================
    ECHO From below list choose desired installation:                               Network req.    Version
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO Environment supporting applications, to be chosen only on new system or when specified to do so
    ECHO ig.    Install Git for Windows - versioning engine                         Internet        %version_git%
    ECHO ip.    Install Python 3.9.x for Windows - script engine latest GA          Internet        %version_python39x_major_minor_build%
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO Optional software packages available only to certain users, if you see this U R special
    ECHO id.    Install Double Commander for Windows - file manager                 Internet        %version_double_commander%
    ECHO in.    Install Notepad++ - advanced text editor                            Internet        %version_notepad_plus_plus%
    ECHO iz.    Install PeaZip for Windows - archiver                               Internet        %version_pea_zip%
    ECHO ih.    Install PHP for Windows - script engine                             Internet        %version_php%
    ECHO iy.    Install PuTTY for Windows - remote shell                            Internet        %version_putty%
    ECHO ip36.  Install Python 3.6.x for Windows - script engine legacy             Internet        %version_python36x_major_minor_build%
    ECHO ip37.  Install Python 3.7.x for Windows - script engine legacy             Internet        %version_python37x_major_minor_build%
    ECHO ip38.  Install Python 3.8.x for Windows - script engine legacy             Internet        %version_python38x_major_minor_build%
    ECHO it.    Install TreeSize - files, folders and drives analyzer               Internet        %version_tree_size%
    ECHO iv.    Install VLC - multimedia files player                               Internet        %version_vlc%
    ECHO iw.    Install WinSCP - open source and multiple protocol file handler     Internet        %version_winscp%
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO z.     Quit
    ECHO -----------------------------------------------------------------------------------------------------------
    IF DEFINED variable_invalid_install_choice_typed (
        ECHO !!! YOU REALLY HAVE TO PAY ATTENTION TO AVAILABLE CHOICES !!!
        ECHO Choice provided [%CHOICE_INSTALL%] is not a valid one... :-(
    )
    SET /P CHOICE_INSTALL=Please express your choice now:
    IF "%CHOICE_INSTALL%"=="id" ( CALL :InitiateOrUpdateFrameworkInfrastructure__DoubleCommander ) ELSE (
    IF "%CHOICE_INSTALL%"=="ID" ( CALL :InitiateOrUpdateFrameworkInfrastructure__DoubleCommander ) ELSE (
    IF "%CHOICE_INSTALL%"=="ig" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Git ) ELSE (
    IF "%CHOICE_INSTALL%"=="IG" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Git ) ELSE (
    IF "%CHOICE_INSTALL%"=="in" ( CALL :InitiateOrUpdateFrameworkInfrastructure__NotepadPlusPlus ) ELSE (
    IF "%CHOICE_INSTALL%"=="IN" ( CALL :InitiateOrUpdateFrameworkInfrastructure__NotepadPlusPlus ) ELSE (
    IF "%CHOICE_INSTALL%"=="ih" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Php ) ELSE (
    IF "%CHOICE_INSTALL%"=="IH" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Php ) ELSE (
    IF "%CHOICE_INSTALL%"=="iz" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PeaZip ) ELSE (
    IF "%CHOICE_INSTALL%"=="IZ" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PeaZip ) ELSE (
    IF "%CHOICE_INSTALL%"=="iy" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PuTTY ) ELSE (
    IF "%CHOICE_INSTALL%"=="IY" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PuTTY ) ELSE (
        IF "%CHOICE_INSTALL%"=="ip" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="IP" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="ip36" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseThreeMinorVersionsPriorToLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="IP36" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseThreeMinorVersionsPriorToLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="ip37" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseTwoMinorVersionsPriorToLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="IP37" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleaseTwoMinorVersionsPriorToLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="ip38" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleasePriorToLatest ) ELSE (
        IF "%CHOICE_INSTALL%"=="IP38" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PythonStableReleasePriorToLatest ) ELSE (
            IF "%CHOICE_INSTALL%"=="it" ( CALL :InitiateOrUpdateFrameworkInfrastructure__TreeSize ) ELSE (
            IF "%CHOICE_INSTALL%"=="IT" ( CALL :InitiateOrUpdateFrameworkInfrastructure__TreeSize ) ELSE (
            IF "%CHOICE_INSTALL%"=="iv" ( CALL :InitiateOrUpdateFrameworkInfrastructure__VLC ) ELSE (
            IF "%CHOICE_INSTALL%"=="IV" ( CALL :InitiateOrUpdateFrameworkInfrastructure__VLC ) ELSE (
            IF "%CHOICE_INSTALL%"=="iw" ( CALL :InitiateOrUpdateFrameworkInfrastructure__WinSCP ) ELSE (
            IF "%CHOICE_INSTALL%"=="IW" ( CALL :InitiateOrUpdateFrameworkInfrastructure__WinSCP ) ELSE (
                IF "%CHOICE_INSTALL%"=="dbe-c" ( CALL :ConsideredInstallChoice_CreateLocalArchive_DatabaseExtractor ) ELSE (
                IF "%CHOICE_INSTALL%"=="DBE-C" ( CALL :ConsideredInstallChoice_CreateLocalArchive_DatabaseExtractor ) ELSE (
                IF "%CHOICE_INSTALL%"=="dbe-p" ( CALL :ConsideredInstallChoice_PublishLocalArchive_DatabaseExtractor ) ELSE (
                IF "%CHOICE_INSTALL%"=="DBE-P" ( CALL :ConsideredInstallChoice_PublishLocalArchive_DatabaseExtractor ) ELSE (
                IF "%CHOICE_INSTALL%"=="thm-c" ( CALL :ConsideredInstallChoice_CreateLocalArchive_TableauHyperManagement ) ELSE (
                IF "%CHOICE_INSTALL%"=="THM-C" ( CALL :ConsideredInstallChoice_CreateLocalArchive_TableauHyperManagement ) ELSE (
                IF "%CHOICE_INSTALL%"=="thm-p" ( CALL :ConsideredInstallChoice_PublishLocalArchive_TableauHyperManagement ) ELSE (
                IF "%CHOICE_INSTALL%"=="THM-P" ( CALL :ConsideredInstallChoice_PublishLocalArchive_TableauHyperManagement ) ELSE (
                    IF "%CHOICE_INSTALL%"=="z" ( CALL :DecisionToQuitTakeFinalMessage ) ELSE (
                    IF "%CHOICE_INSTALL%"=="Z" ( CALL :DecisionToQuitTakeFinalMessage ) ELSE (
                        CALL :ConsideredInstallChoice_Invalid
                    )
                    )
                )
                )
                )
                )
                )
                )
                )
                )
            )
            )
            )
            )
            )
            )
        )
        )
        )
        )
        )
        )
        )
        )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
    )
GOTO END

REM ----------------------------------------------------------------------------
REM End of Main Part
REM ----------------------------------------------------------------------------

:END
