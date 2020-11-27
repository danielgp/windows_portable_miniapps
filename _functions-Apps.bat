call %*
GOTO END

REM ----------------------------------------------------------------------------
REM Versioning
REM ----------------------------------------------------------------------------

:EstablishThisScriptVersionDetails
    SET this_script_version=0.2.4
    SET this_script_release_date=2020-11-27
GOTO END

:EstablishApplications
    SET apache_httpd__application_main_binary=apache.exe
    SET apache_httpd__application_name=Apache HTTPd for Windows
    SET apache_mod_evasive__application_main_binary=mod_evasive.so
    SET apache_mod_evasive__application_name=Mod Evasive for Apache
    SET apache_mod_fcgid__application_main_binary=mod_fcgid.so
    SET apache_mod_fcgid__application_name=Mod FCGId for Apache
    SET apache_mod_log_rotate__application_main_binary=mod_log_rotate.so
    SET apache_mod_log_rotate__application_name=Mod Log Rotate for Apache
    SET apache_mod_security__application_main_binary=mod_security2.so
    SET apache_mod_security__application_name=Mod Security for Apache
    SET double_commander__application_main_binary=doublecmd.exe
    SET double_commander__application_name=Double Commander for Windows
    SET git__application_main_binary=git-cmd.exe
    SET git__application_name=Git for Windows
    SET notepad_plus_plus__application_main_binary=notepad++.exe
    SET notepad_plus_plus__application_name=Notepad++ for Windows
    SET peazip__application_main_binary=pea.exe
    SET peazip__application_name=PeaZip for Windows
    SET php__application_main_binary=php.exe
    SET php__application_name=PHP for Windows
    SET putty__application_main_binary=putty.exe
    SET putty__application_name=PuTTY for Windows
    SET treesize__application_main_binary=treesize.exe
    SET treesize__application_name=TreeSizeFree for Windows
    SET vlc__application_main_binary=vlc.exe
    SET vlc__application_name=VLC for Windows
    SET winscp__application_main_binary=winscp.exe
    SET winscp__application_name=WinSCP for Windows
GOTO END

:EstablishVersions
    SET version_apache_httpd=2.4.46
    SET version_apache_mod_evasive=2.2.0
    SET version_apache_mod_fcgid=2.3.10
    SET version_apache_mod_log_rotate=1.0.2
    SET version_apache_mod_security=2.9.3
    SET version_double_commander=1.0.9483
    SET version_double_commander_kit=%version_double_commander:0.=0a-%
    SET version_git=2.29.2
    SET version_git_windows_compilation=.windows.2
    SET version_notepad_plus_plus=7.9.1
    SET version_pea_zip=7.5.0
    SET version_php_74x=7.4.13
    SET version_php_80x=8.0.0
    SET version_putty=0.74
    SET version_python36x_major_minor=3.6
    SET version_python36x_major_minor_build=3.6.8
    SET version_python37x_major_minor=3.7
    SET version_python37x_major_minor_build=3.7.9
    SET version_python38x_major_minor=3.8
    SET version_python38x_major_minor_build=3.8.6
    SET version_python39x_major_minor=3.9
    SET version_python39x_major_minor_build=3.9.0
    SET version_treesize=4.4.2
    SET version_vlc=3.0.11
    SET version_winscp=5.17.9
    SET custom_user_agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0
GOTO END

:EstablishDownloadingSourceAddress
    SET url_apache_httpd_archive=httpd-%version_apache_httpd%-win64-VS16.zip
    SET url_apache_httpd_archive_includes_folder=Yes
    SET url_apache_httpd_archive_included_folder_name=Apache24
    SET url_apache_httpd=https://www.apachelounge.com/download/VS16/binaries/%url_apache_httpd_archive%
    SET url_apache_mod_evasive_archive=mod_evasive-%version_apache_mod_evasive%-win64-VS16.zip
    SET url_apache_mod_evasive_archive_includes_folder=No
    SET url_apache_mod_evasive=https://www.apachelounge.com/download/VS16/modules/%url_apache_mod_evasive_archive%
    SET url_apache_mod_fcgid_archive=mod_fcgid-%version_apache_mod_fcgid%-win64-VS16.zip
    SET url_apache_mod_fcgid_archive_includes_folder=No
    SET url_apache_mod_fcgid=https://www.apachelounge.com/download/VS16/modules/%url_apache_mod_evasive_archive%
    SET url_apache_mod_log_rotate_archive=mod_log_rotate-%version_apache_mod_log_rotate%-win64-VS16.zip
    SET url_apache_mod_log_rotate_archive_includes_folder=No
    SET url_apache_mod_log_rotate=https://www.apachelounge.com/download/VS16/modules/%url_apache_mod_log_rotate_archive%
    SET url_apache_mod_security_archive=mod_security-%version_apache_mod_security%-win64-VS16.zip
    SET url_apache_mod_security_archive_includes_folder=No
    SET url_apache_mod_security=https://www.apachelounge.com/download/VS16/modules/%url_apache_mod_security_archive%
    SET url_double_commander_archive=DoubleCmd-%version_double_commander_kit%-Win32X64.7z
    SET url_double_commander_archive_includes_folder=No
    SET url_double_commander=https://github.com/double-commander/doublecmd/releases/download/%version_double_commander%/%url_double_commander_archive%
    SET version_git_enhanced=%version_git%
    IF "%version_git_windows_compilation%"==".windows.2" (
        SET version_git_enhanced=%version_git%.2
    )
    SET url_git_archive=PortableGit-%version_git_enhanced%-64-bit.7z.exe
    SET url_git_archive_includes_folder=Yes
    SET url_git_archive_included_folder_name=PortableGit
    SET url_git=https://github.com/git-for-windows/git/releases/download/v%version_git%%version_git_windows_compilation%/%url_git_archive%
    SET url_notepad_plus_plus_archive=npp.%version_notepad_plus_plus%.portable.x64.zip
    SET url_notepad_plus_plus_archive_includes_folder=No
    SET url_notepad_plus_plus=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v%version_notepad_plus_plus%/%url_notepad_plus_plus_archive%
    SET url_peazip_archive=peazip_portable-%version_pea_zip%.WIN64.zip
    SET url_peazip_archive_includes_folder=Yes
    SET url_peazip_archive_included_folder_name=peazip_portable-%version_pea_zip%.WIN64
    SET url_peazip=https://github.com/giorgiotani/PeaZip/releases/download/%version_pea_zip%/%url_peazip_archive%
    SET url_php_archive_74x=php-%version_php_74x%-nts-Win32-vc15-x64.zip
    SET url_php_archive_74x_includes_folder=No
    SET url_php_74x=https://windows.php.net/downloads/releases/%url_php_archive_74x%
    SET url_php_archive_80x=php-%version_php_80x%-nts-Win32-vs16-x64.zip
    SET url_php_archive_80x_includes_folder=No
    SET url_php_80x=https://windows.php.net/downloads/releases/%url_php_archive_80x%
    SET url_putty_archive=putty.zip
    SET url_putty_archive_includes_folder=No
    SET url_putty=https://the.earth.li/~sgtatham/putty/latest/w64/%url_putty_archive%
    SET url_python_pip=https://bootstrap.pypa.io/get-pip.py
    SET url_python37x=https://www.python.org/ftp/python/%version_python37x_major_minor_build%/python-%version_python37x_major_minor_build%-embed-amd64.zip
    SET url_python37x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python37x_major_minor%/virtualenv.pyz
    SET url_python38x=https://www.python.org/ftp/python/%version_python38x_major_minor_build%/python-%version_python38x_major_minor_build%-embed-amd64.zip
    SET url_python38x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python38x_major_minor%/virtualenv.pyz
    SET url_python39x=https://www.python.org/ftp/python/%version_python39x_major_minor_build%/python-%version_python39x_major_minor_build%-embed-amd64.zip
    SET url_python39x_virtualenv=https://bootstrap.pypa.io/virtualenv/virtualenv.pyz
    SET url_treesize_archive=TreeSizeFree-Portable.zip
    SET url_treesize_archive_includes_folder=No
    SET url_treesize=https://downloads.jam-software.de/treesize_free/%url_treesize_archive%
    SET url_vlc_archive=vlc-%version_vlc%-win64.zip
    SET url_vlc_archive_includes_folder=Yes
    SET url_vlc_archive_included_folder_name=vlc-%version_vlc%
    SET url_vlc=https://download.videolan.org/pub/videolan/vlc/%version_vlc%/win64/%url_vlc_archive%
    SET url_winscp_archive=WinSCP-%version_winscp%-Portable.zip
    SET url_winscp_archive_includes_folder=No
    SET url_winscp=https://pilotfiber.dl.sourceforge.net/project/winscp/WinSCP/%version_winscp%/%url_winscp_archive%
GOTO END

:EstablishInstallingFolders
    SET path_downloads=C:\www\Downloads\
    SET path_web_applications=C:\www\App\
    SET path_developer_applications=C:\www\AppForDeveloper\
    SET path_developer_applications__root__apache=Apache_HTTPd
    SET path_developer_applications_apache_httpd=%path_web_applications%%path_developer_applications__root__apache%\%version_apache_httpd%-64bit
    SET path_developer_applications__root__apache_mod_evasive=Apache_Module_Evasive
    SET path_developer_applications_apache_mod_evasive=%path_web_applications%%path_developer_applications__root__apache_mod_evasive%\%version_apache_mod_evasive%-64bit
    SET path_developer_applications__root__apache_mod_fcgid=Apache_Module_FCGId
    SET path_developer_applications_apache_mod_fcgid=%path_web_applications%%path_developer_applications__root__apache_mod_fcgid%\%version_apache_mod_fcgid%-64bit
    SET path_developer_applications__root__apache_mod_log_rotate=Apache_Module_Log_Rotate
    SET path_developer_applications_apache_mod_log_rotate=%path_web_applications%%path_developer_applications__root__apache_mod_log_rotate%\%version_apache_mod_log_rotate%-64bit
    SET path_developer_applications__root__apache_mod_security=Apache_Module_Security
    SET path_developer_applications_apache_mod_security=%path_web_applications%%path_developer_applications__root__apache_mod_security%\%version_apache_mod_security%-64bit
    SET path_developer_applications__root__double_commander=DoubleCommander
    SET path_developer_applications_double_commander=%path_developer_applications%%path_developer_applications__root__double_commander%\%version_double_commander%-64bit
    SET path_developer_applications__root__git=Git
    SET path_developer_applications_git=%path_developer_applications%%path_developer_applications__root__git%\%version_git_enhanced%-64bit
    SET path_developer_applications__root__notepad_plus_plus=Notepad++
    SET path_developer_applications_notepad_plus_plus=%path_developer_applications%%path_developer_applications__root__notepad_plus_plus%\%version_notepad_plus_plus%-64bit
    SET path_developer_applications__root__peazip=PeaZip
    SET path_developer_applications_peazip=%path_developer_applications%%path_developer_applications__root__peazip%\%version_pea_zip%-64bit
    SET path_developer_applications__root__php=PHP
    SET path_developer_applications_php_74x=%path_web_applications%%path_developer_applications__root__php%\%version_php_74x%-64bit
    SET path_developer_applications_php_80x=%path_web_applications%%path_developer_applications__root__php%\%version_php_80x%-64bit
    SET path_developer_applications__root__putty=PuTTY
    SET path_developer_applications_putty=%path_developer_applications%%path_developer_applications__root__putty%\%version_putty%-64bit
    SET path_developer_applications__root__python=Python
    SET path_developer_applications_python37x=%path_developer_applications%%path_developer_applications__root__python%\%version_python37x_major_minor_build%-64bit
    SET path_developer_applications_python37x_modules=%path_developer_applications%%path_developer_applications__root__python%\%version_python37x_major_minor_build%-modules
    SET path_developer_applications_python38x=%path_developer_applications%%path_developer_applications__root__python%\%version_python38x_major_minor_build%-64bit
    SET path_developer_applications_python38x_modules=%path_developer_applications%%path_developer_applications__root__python%\%version_python38x_major_minor_build%-modules
    SET path_developer_applications_python39x=%path_developer_applications%%path_developer_applications__root__python%\%version_python39x_major_minor_build%-64bit
    SET path_developer_applications_python39x_modules=%path_developer_applications%%path_developer_applications__root__python%\%version_python39x_major_minor_build%-modules
    SET path_developer_applications__root__treesize=TreeSize
    SET path_developer_applications_treesize=%path_developer_applications%%path_developer_applications__root__treesize%\%version_treesize%-32bit
    SET path_developer_applications__root__vlc=VLC
    SET path_developer_applications_vlc=%path_developer_applications%%path_developer_applications__root__vlc%\%version_vlc%-64bit
    SET path_developer_applications__root__winscp=WinSCP
    SET path_developer_applications_winscp=%path_developer_applications%%path_developer_applications__root__winscp%\%version_winscp%-64bit
GOTO END

REM ----------------------------------------------------------------------------
REM Common functionalities
REM ----------------------------------------------------------------------------

:ConsideredInstallChoice_Invalid
    SET variable_invalid_install_choice_typed=YES
GOTO Menu__InstallationsToDo

:ConsideredPythonVirtualEnvironment_Invalid
    SET variable_invalid_virtual_environment_choice_typed=YES
GOTO Menu__PythonVirtualEnvironmentInitiationOrUpdate

:CreateDownloadsFolder
    IF NOT EXIST "%path_downloads%" (
        ECHO As the %path_downloads% does not exists, will be created
        MD "%path_downloads%"
    )
GOTO END

:DecisionToQuitTakeFinalMessage
    ECHO ...
    ECHO Sorry to see you leave you so soon, thanks and good-bye!
GOTO END

:InitiateGlobalVariablesForInstallation
    CALL :EstablishThisScriptVersionDetails
    CALL :EstablishApplications
    CALL :EstablishVersions
    CALL :EstablishDownloadingSourceAddress
    CALL :EstablishInstallingFolders
GOTO END

:RemoveDownloadsFolderWithAnyContent
    IF EXIST %path_downloads% (
        REM RMDIR /Q /S %path_downloads%
    )
    SET CHOICE_INSTALL=0
GOTO END

:RemoveFolderWithOlderVersions
    IF EXIST %generic_application_folder%\%exact_version_folder% (
        ECHO Removing %generic_application_folder%\%exact_version_folder%
        RMDIR /Q /S %generic_application_folder%\%exact_version_folder%
    )
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    CALL :CreateDownloadsFolder
    :: Check if main binary of application is already in place
    IF NOT EXIST "%path_developer_application_specific%\%application_main_binary%" (
        :: Donwload the archive but only if is not already in place
        IF NOT EXIST %path_downloads%%url_application_archive% (
            ECHO Will download portable version of %application_name%, version %version_application%, using PowerShell, as this action implies a active download this may take a while, more or less depending on your bandwith and Internet workload at this time, set back and be patient
            powershell.exe -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_application_full%','%path_downloads%%url_application_archive%')"
        )
        IF EXIST "%path_downloads%%url_application_archive%" (
            SET url_application_archive_format=undecided
            SET url_application_archive_extension_detected=%url_application_archive%
            ECHO Extension of the archive %url_application_archive% is %url_application_archive:~-4% so will be treated accordingly
            IF NOT EXIST "%path_developer_application_specific%" (
                ECHO As destination folder %path_developer_application_specific% does not exists, it will be created now
                MD %path_developer_application_specific%
            )
            IF /I "%url_application_archive:~-7%"==".7z.exe" (
                IF EXIST %path_downloads%%url_application_archive% (
                    IF NOT EXIST %path_downloads%%url_application_archive_included_folder_name% (
                        ECHO Will extract downloaded kit %url_application_archive% to a intermediary destination folder, using PowerShell
                        %path_downloads%%url_application_archive% -y
                    )
                )
            )
            IF /I "%url_application_archive:~-3%"==".7z" (
                CALL :InitiateOrUpdateFrameworkInfrastructure__PeaZip
                ECHO Will extract downloaded kit %path_downloads%%url_application_archive% to a folder from where it will reside for user to enjoy, using PowerShell
                %path_developer_applications_peazip%\res\7z\7z.exe x %path_downloads%%url_application_archive% -o%path_developer_application_specific%
            )
            IF /I "%url_application_archive:~-4%"==".zip" (
                IF "%url_application_archive_includes_folder%"=="No" (
                    ECHO Will extract downloaded kit %path_downloads%%url_application_archive% to a folder from where it will reside for user to enjoy, using PowerShell
                    powershell.exe Expand-Archive -Path %path_downloads%%url_application_archive% -DestinationPath %path_developer_application_specific%
                )
                IF "%url_application_archive_includes_folder%"=="Yes" (
                    IF EXIST "%path_downloads%%url_application_archive%" (
                        ECHO Will extract downloaded kit %url_application_archive% to a intermediary destination folder, using PowerShell
                        powershell.exe Expand-Archive -Path %path_downloads%%url_application_archive% -DestinationPath %path_downloads%
                    )
                )
            )
            IF "%url_application_archive_includes_folder%"=="Yes" (
                IF NOT EXIST %path_developer_application_specific%\%application_main_binary% (
                    ECHO Will move files from intermediary destination folder, %url_application_archive_included_folder_name% to final destination %path_developer_application_specific%
                    XCOPY %path_downloads%%url_application_archive_included_folder_name% %path_developer_application_specific% /c /s /r /h /y
                    ECHO Will delete all files from intermediary destination folder, %url_application_archive_included_folder_name%
                    RMDIR /Q /S %path_downloads%%url_application_archive_included_folder_name%
                )
            )
        )
    )
GOTO END

REM ----------------------------------------------------------------------------
REM End of Project Specific variable initialize
REM Start of Main Part
REM ----------------------------------------------------------------------------

:SetPythonGlobalVariables
    :: IF NOT DEFINED PY_PIP (
        ECHO Setting global variables for Python %version_python_major_minor_build% ...
        SET PYTHONHOME=%path_developer_applications_python%
        SET PYTHONPATH=%path_developer_applications_python%
        SET PY_PIP=%path_developer_applications_python%\Scripts
        SET PY_LIBS=%path_developer_applications_python%\Lib;%path_developer_applications_python%\Lib\site-packages
        SET PATH="%path_developer_applications_python%;%PY_PIP%;%PY_LIBS%;%PATH%"
    :: )
GOTO END

:AdditionalTask_InitiatePythonVirtualEnvironment
REM https://virtualenv.pypa.io/en/latest/installation.html#via-zipapp
    IF NOT EXIST "%path_developer_applications_python_modules%\virtualenv.pyz" (
        IF NOT EXIST %path_developer_applications_python_modules% (
            ECHO Will crate a new folder named %path_developer_applications_python_modules%
            MD %path_developer_applications_python_modules%
            IF EXIST "%path_developer_applications_python_modules%" (
                ECHO %path_developer_applications_python_modules% folder has been created
            )
        )
        ECHO Will download Python Virtual Environment module, using PowerShell
        powershell.exe "$cli=New-Object System.Net.WebClient;$cli.Headers['User-Agent']='%custom_user_agent%';$cli.DownloadFile('%url_python_virtualenv%','%path_developer_applications_python_modules%\virtualenv.pyz');"
    )
    CALL :SetPythonGlobalVariables
    IF EXIST "%path_developer_applications_python%\python.exe" (
        IF EXIST "%path_developer_applications_python_modules%\virtualenv.pyz" (
            IF NOT EXIST "%CHOICE_PYTHON_PROJECT%\%applied_virtual_environment_folder%\Scripts\python.exe" (
                CD %CHOICE_PYTHON_PROJECT%
                ECHO Creating Python Virtual Environment to %CHOICE_PYTHON_PROJECT%\%applied_virtual_environment_folder%
                ECHO -----------------
                REM %path_developer_applications_python%\python.exe %path_developer_applications_python_modules%\virtualenv.pyz --help
                %path_developer_applications_python%\python.exe %path_developer_applications_python_modules%\virtualenv.pyz --verbose --always-copy --python=%path_developer_applications_python%\python.exe --creator builtin --with-traceback --clear --extra-search-dir=%path_developer_applications_python% --extra-search-dir=%path_developer_applications_python%\DLLs --extra-search-dir=%path_developer_applications_python%\Scripts --extra-search-dir=%path_developer_applications_python%\Lib --extra-search-dir=%path_developer_applications_python%\Lib\site-packages %CHOICE_PYTHON_PROJECT%\%applied_virtual_environment_folder%\
                REM %path_developer_applications_python%\python.exe %path_developer_applications_python_modules%\virtualenv.pyz --python=%path_developer_applications_python%\python.exe --extra-search-dir=%path_developer_applications_python%\DLLs %applied_virtual_environment_folder%
                ECHO -----------------
                REM %path_developer_applications_python%\python.exe %path_developer_applications_python_modules%\virtualenv.pyz --help
            )
        )
    )
    REM %path_developer_applications_python%\python.exe -m virtualenv %applied_virtual_environment_folder%
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__ApacheHTTPd
    SET application_main_binary=%apache_httpd__application_main_binary%
    SET application_name=%apache_httpd__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_httpd%
    SET url_application_archive=%url_apache_httpd_archive%
    SET url_application_archive_includes_folder=%url_apache_httpd_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_httpd_archive_included_folder_name%
    SET url_application_full=%url_apache_httpd%
    SET version_application=%version_apache_httpd%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (2.2.43) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__apache_httpd%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__ApacheModEvasive
    SET application_main_binary=%apache_mod_evasive__application_main_binary%
    SET application_name=%apache_mod_evasive__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_mod_evasive%
    SET url_application_archive=%url_apache_mod_evasive_archive%
    SET url_application_archive_includes_folder=%url_apache_mod_evasive_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_mod_evasive_archive_included_folder_name%
    SET url_application_full=%url_apache_mod_evasive%
    SET version_application=%version_apache_mod_evasive%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (2.1.0) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__apache_mod_evasive%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__ApacheModFCGId
    SET application_main_binary=%apache_mod_fcgid__application_main_binary%
    SET application_name=%apache_mod_fcgid__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_mod_fcgid%
    SET url_application_archive=%url_apache_mod_fcgid_archive%
    SET url_application_archive_includes_folder=%url_apache_mod_fcgid_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_mod_fcgid_archive_included_folder_name%
    SET url_application_full=%url_apache_mod_fcgid%
    SET version_application=%version_apache_mod_fcgid%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (2.3.9) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__apache_mod_fcgid%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__ApacheModLogRotate
    SET application_main_binary=%apache_mod_log_rotate__application_main_binary%
    SET application_name=%apache_mod_log_rotate__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_mod_log_rotate%
    SET url_application_archive=%url_apache_mod_log_rotate_archive%
    SET url_application_archive_includes_folder=%url_apache_mod_log_rotate_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_mod_log_rotate_archive_included_folder_name%
    SET url_application_full=%url_apache_mod_log_rotate%
    SET version_application=%version_apache_mod_log_rotate%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (1.0.0 1.0.1) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__apache_mod_log_rotate%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__ApacheModSecurity
    SET application_main_binary=%apache_mod_security__application_main_binary%
    SET application_name=%apache_mod_security__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_mod_security%
    SET url_application_archive=%url_apache_mod_security_archive%
    SET url_application_archive_includes_folder=%url_apache_mod_security_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_mod_security_archive_included_folder_name%
    SET url_application_full=%url_apache_mod_security%
    SET version_application=%version_apache_mod_security%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (2.9.1 2.9.2) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__apache_mod_security%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__DoubleCommander
    SET application_main_binary=%double_commander__application_main_binary%
    SET application_name=%double_commander__application_name%
    SET path_developer_application_specific=%path_developer_applications_double_commander%
    SET url_application_archive=%url_double_commander_archive%
    SET url_application_archive_includes_folder=%url_double_commander_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_double_commander_archive_included_folder_name%
    SET url_application_full=%url_double_commander%
    SET version_application=%version_double_commander%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (1.0.9375) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__git%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Git
    SET application_main_binary=%git__application_main_binary%
    SET application_name=%git__application_name%
    SET path_developer_application_specific=%path_developer_applications_git%
    SET url_application_archive=%url_git_archive%
    SET url_application_archive_includes_folder=%url_git_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_git_archive_included_folder_name%
    SET url_application_full=%url_git%
    SET version_application=%version_git%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (2.26.1 2.26.2 2.27.0 2.28.0 2.29.0 2.29.1 2.29.2) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__git%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__NotepadPlusPlus
    SET application_main_binary=%notepad_plus_plus__application_main_binary%
    SET application_name=%notepad_plus_plus__application_name%
    SET path_developer_application_specific=%path_developer_applications_notepad_plus_plus%
    SET url_application_archive=%url_notepad_plus_plus_archive%
    SET url_application_archive_includes_folder=%url_notepad_plus_plus_archive_includes_folder%
    SET url_application_full=%url_notepad_plus_plus%
    SET version_application=%version_notepad_plus_plus%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (7.8.1 7.8.2 7.8.3 7.8.4 7.8.5 7.8.6 7.8.7 7.8.8 7.8.9 7.9) do (
        IF EXIST "%path_developer_applications%Notepad++\%%i-64bit" (
            for %%j in (session.xml config.xml) do (
                IF EXIST "%path_developer_applications%Notepad++\%%i-64bit\%%j" (
                    COPY /Y %path_developer_applications%Notepad++\%%i-64bit\%%j %path_developer_applications_notepad_plus_plus%
                )
            )
            IF EXIST "%path_developer_applications%Notepad++\%%i-64bit\backup\" (
                XCOPY "%path_developer_applications%Notepad++\%%i-64bit\backup\" %path_developer_applications_notepad_plus_plus%\backup\ /c /s /r /h /y
            )
            SET exact_version_folder=%%i-64bit
            SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__notepad_plus_plus%
            CALL :RemoveFolderWithOlderVersions
        )
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__PeaZip
    SET application_main_binary=%peazip__application_main_binary%
    SET application_name=%peazip__application_name%
    SET path_developer_application_specific=%path_developer_applications_peazip%
    SET url_application_archive=%url_peazip_archive%
    SET url_application_archive_includes_folder=%url_peazip_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_peazip_archive_included_folder_name%
    SET url_application_full=%url_peazip%
    SET version_application=%version_peazip%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (7.2.0 7.2.1 7.2.2 7.3.0 7.3.1 7.3.2 7.4.0 7.4.1 7.4.2) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__peazip%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__Php74x
    SET application_main_binary=%php__application_main_binary%
    SET application_name=%php__application_name%
    SET path_developer_application_specific=%path_developer_applications_php_74x%
    SET url_application_archive=%url_php_archive_74x%
    SET url_application_archive_includes_folder=%url_php_archive_74x_includes_folder%
    SET url_application_full=%url_php_74x%
    SET version_application=%version_php_74x%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    IF EXIST %path_developer_applications_php%\php.exe (
        for %%i in (7.4.0 7.4.1 7.4.2 7.4.3 7.4.4 7.4.5 7.4.6 7.4.7 7.4.8 7.4.9 7.4.10 7.4.11 7.4.12) do (
            SET exact_version_folder=%%i-64bit
            SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__php%
            CALL :RemoveFolderWithOlderVersions
        )
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Php80x
    SET application_main_binary=%php__application_main_binary%
    SET application_name=%php__application_name%
    SET path_developer_application_specific=%path_developer_applications_php_80x%
    SET url_application_archive=%url_php_archive_80x%
    SET url_application_archive_includes_folder=%url_php_archive_80x_includes_folder%
    SET url_application_full=%url_php_80x%
    SET version_application=%version_php_80x%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (8.0.999) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__php%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__PuTTY
    SET application_main_binary=%putty__application_main_binary%
    SET application_name=%putty__application_name%
    SET path_developer_application_specific=%path_developer_applications_putty%
    SET url_application_archive=%url_putty_archive%
    SET url_application_archive_includes_folder=%url_putty_archive_includes_folder%
    SET url_application_full=%url_putty%
    SET version_application=%version_putty%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (0.72 0.73) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__putty%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python36x
    SET path_developer_applications_python=%path_developer_applications_python36x%
    SET version_python_major_minor_build=%version_python36x_major_minor_build%
    SET url_python=%url_python36x%
    SET python_compiled_modules_archive=python36.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python37x
    SET path_developer_applications_python=%path_developer_applications_python37x%
    SET version_python_major_minor_build=%version_python37x_major_minor_build%
    SET url_python=%url_python37x%
    SET python_compiled_modules_archive=python37.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python38x
    SET path_developer_applications_python=%path_developer_applications_python38x%
    SET version_python_major_minor_build=%version_python38x_major_minor_build%
    SET url_python=%url_python38x%
    SET python_compiled_modules_archive=python38.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python39x
    SET path_developer_applications_python=%path_developer_applications_python39x%
    SET version_python_major_minor_build=%version_python39x_major_minor_build%
    SET url_python=%url_python39x%
    SET python_compiled_modules_archive=python39.zip
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdate__Python36xVirtualEnvironment
    SET version_python_major_minor_build=%version_python36x_major_minor_build%
    SET url_python_virtualenv=%url_python36x_virtualenv%
    SET path_developer_applications_python_modules=%path_developer_applications_python36x_modules%
    SET path_developer_applications_python=%path_developer_applications_python36x%
    SET applied_virtual_environment_folder=virtual_environment_%version_python36x_major_minor%.x
    CALL :AdditionalTask_InitiatePythonVirtualEnvironment
GOTO END

:InitiateOrUpdate__Python37xVirtualEnvironment
    SET version_python_major_minor_build=%version_python37x_major_minor_build%
    SET url_python_virtualenv=%url_python37x_virtualenv%
    SET path_developer_applications_python_modules=%path_developer_applications_python37x_modules%
    SET path_developer_applications_python=%path_developer_applications_python37x%
    SET applied_virtual_environment_folder=virtual_environment_%version_python37x_major_minor%.x
    CALL :AdditionalTask_InitiatePythonVirtualEnvironment
GOTO END

:InitiateOrUpdate__Python38xVirtualEnvironment
    SET version_python_major_minor_build=%version_python38x_major_minor_build%
    SET url_python_virtualenv=%url_python38x_virtualenv%
    SET path_developer_applications_python_modules=%path_developer_applications_python38x_modules%
    SET path_developer_applications_python=%path_developer_applications_python38x%
    SET applied_virtual_environment_folder=virtual_environment_%version_python38x_major_minor%.x
    CALL :AdditionalTask_InitiatePythonVirtualEnvironment
GOTO END

:InitiateOrUpdate__Python39xVirtualEnvironment
    SET version_python_major_minor_build=%version_python39x_major_minor_build%
    SET url_python_virtualenv=%url_python39x_virtualenv%
    SET path_developer_applications_python_modules=%path_developer_applications_python39x_modules%
    SET path_developer_applications_python=%path_developer_applications_python39x%
    SET applied_virtual_environment_folder=virtual_environment_%version_python39x_major_minor%.x
    CALL :AdditionalTask_InitiatePythonVirtualEnvironment
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__Python
    CALL :CreateDownloadsFolder
    IF NOT EXIST %path_developer_applications_python%\python.exe (
        :: Donwload the archive but only if is not already done
        IF NOT EXIST %path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip (
            ECHO Will download portable version of Python for Windows, using PowerShell
            powershell.exe -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_python%','%path_downloads%python-%version_python_major_minor_build%-embed-amd64.zip')"
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
            powershell.exe "(new-object System.Net.WebClient).DownloadFile('%url_python_pip%','%path_downloads%get-pip.py')"
        )
        IF EXIST "%path_downloads%get-pip.py" (
            ECHO Initialize Python Package Manager: PIP
            %path_developer_applications_python%\python.exe %path_downloads%get-pip.py --no-warn-script-location
        )
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__TreeSize
    SET application_main_binary=%treesize__application_main_binary%
    SET application_name=%treesize__application_name%
    SET path_developer_application_specific=%path_developer_applications_treesize%
    SET url_application_archive=%url_treesize_archive%
    SET url_application_archive_includes_folder=%url_treesize_archive_includes_folder%
    SET url_application_full=%url_treesize%
    SET version_application=%version_treesize%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (4.4.0 4.4.1) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__treesize%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__VLC
    SET application_main_binary=%vlc__application_main_binary%
    SET application_name=%vlc__application_name%
    SET path_developer_application_specific=%path_developer_applications_vlc%
    SET url_application_archive=%url_vlc_archive%
    SET url_application_archive_includes_folder=%url_vlc_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_vlc_archive_included_folder_name%
    SET url_application_full=%url_vlc%
    SET version_application=%version_vlc%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (3.0.8 3.0.9 3.0.10) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__vlc%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__WinSCP
    SET application_main_binary=%winscp__application_main_binary%
    SET application_name=%winscp__application_name%
    SET path_developer_application_specific=%path_developer_applications_winscp%
    SET url_application_archive=%url_winscp_archive%
    SET url_application_archive_includes_folder=%url_winscp_archive_includes_folder%
    SET url_application_full=%url_winscp%
    SET version_application=%version_winscp%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    for %%i in (5.17.5 5.17.6 5.17.7 5.17.8) do (
        SET exact_version_folder=%%i-64bit
        SET generic_application_folder=%path_developer_applications%%path_developer_applications__root__winscp%
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:Menu__PythonVirtualEnvironmentInitiationOrUpdate
    ECHO ===========================================================================================================
    ECHO Initiate or update Virtual Environment for %CHOICE_PYTHON_PROJECT%
    ECHO ===========================================================================================================
    ECHO 36x.   Python 3.6.x Virtual Environment                 Internet        %version_python36x_major_minor_build%
    ECHO 37x.   Python 3.7.x Virtual Environment                 Internet        %version_python37x_major_minor_build%
    ECHO 38x.   Python 3.8.x Virtual Environment                 Internet        %version_python38x_major_minor_build%
    ECHO 39x.   Python 3.9.x Virtual Environment                 Internet        %version_python39x_major_minor_build%
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO x.     Return to Python project specification
    ECHO y.     Return to Installation to perform menu
    ECHO z.     Quit
    ECHO -----------------------------------------------------------------------------------------------------------
    IF DEFINED variable_invalid_virtual_environment_choice_typed (
        ECHO !!! YOU REALLY HAVE TO PAY ATTENTION TO AVAILABLE CHOICES !!!
        ECHO Choice provided [%CHOICE_VIRTUAL_ENVIRONMENT%] is not a valid one... :-(
    )
    SET /P CHOICE_VIRTUAL_ENVIRONMENT=Please express your choice now:
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="36x" ( CALL :InitiateOrUpdate__Python36xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="36X" ( CALL :InitiateOrUpdate__Python36xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="37x" ( CALL :InitiateOrUpdate__Python37xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="37X" ( CALL :InitiateOrUpdate__Python37xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="38x" ( CALL :InitiateOrUpdate__Python38xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="38X" ( CALL :InitiateOrUpdate__Python38xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="39x" ( CALL :InitiateOrUpdate__Python39xVirtualEnvironment ) ELSE (
    IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="39X" ( CALL :InitiateOrUpdate__Python39xVirtualEnvironment ) ELSE (
        IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="x" ( CALL :Menu__PythonProject ) ELSE (
        IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="X" ( CALL :Menu__PythonProject ) ELSE (
            IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="y" ( CALL :Menu__InstallationsToDo ) ELSE (
            IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="Y" ( CALL :Menu__InstallationsToDo ) ELSE (
                IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="z" ( CALL :DecisionToQuitTakeFinalMessage ) ELSE (
                IF "%CHOICE_VIRTUAL_ENVIRONMENT%"=="Z" ( CALL :DecisionToQuitTakeFinalMessage ) ELSE (
                    CALL :ConsideredPythonVirtualEnvironment_Invalid
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

:Menu__PythonProject
    ECHO ===========================================================================================================
    ECHO Choosing Python Virtual Environment initiation or update for Given Python project
    ECHO ===========================================================================================================
    ECHO y.     Return to Installation to perform menu
    ECHO z.     Quit
    ECHO -----------------------------------------------------------------------------------------------------------
    SET /P CHOICE_PYTHON_PROJECT=Type an existing Python project folder where a setup.py exists:
    IF NOT EXIST "%CHOICE_PYTHON_PROJECT%\setup.py" (
        ECHO !!! YOU REALLY HAVE TO PROVIDE A PYTHON PROJECT FOLDER CONTAINING A setup.py file in it !!!
        ECHO Choice provided [%CHOICE_PYTHON_PROJECT%] is not a valid one... :-(
    )
    IF EXIST "%CHOICE_PYTHON_PROJECT%\setup.py" ( CALL :Menu__PythonVirtualEnvironmentInitiationOrUpdate ) ELSE (
        IF /I "%CHOICE_PYTHON_PROJECT%"=="y" ( CALL :Menu__InstallationsToDo ) ELSE (
            IF /I "%CHOICE_PYTHON_PROJECT%"=="z" ( CALL :DecisionToQuitTakeFinalMessage )
        )
    )
GOTO END

:Menu__InstallationsToDo
    IF NOT DEFINED CHOICE_INSTALL (
        CLS
    )
    ECHO ===========================================================================================================
    ECHO Installation to perform, released on %this_script_version% released on date %this_script_release_date% (year-month-day)
    ECHO ===========================================================================================================
    ECHO From below list choose desired installation:                         Network req.  Version
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO ia.    Apache HTTPd for Windows        Web server                    Internet      %version_apache_httpd%
    ECHO iame.  Mod Evasive for Apache HTTPd    Web DDoS protector            Internet      %version_apache_mod_evasive%
    ECHO iamf.  Mod FCGId for Apache HTTPd      Web FastCGI module            Internet      %version_apache_mod_fcgid%
    ECHO iamlr. Mod Log Rotate for Apache HTTPd Web Log Rotate module         Internet      %version_apache_mod_log_rotate%
    ECHO iams.  Mod Security for Apache HTTPd   Web Security module           Internet      %version_apache_mod_security%
    ECHO id.    Double Commander for Windows    File manager                  Internet      %version_double_commander%
    ECHO ig.    Git for Windows                 Versioning engine             Internet      %version_git%
    ECHO in.    Notepad++                       Advanced text editor          Internet      %version_notepad_plus_plus%
    ECHO iz.    PeaZip for Windows              Archiver                      Internet      %version_pea_zip%
    ECHO ih74.  PHP 7.4.x for Windows           Script engine                 Internet      %version_php_74x%
    ECHO ih80.  PHP 8.0.x for Windows           Script engine                 Internet      %version_php_80x%
    ECHO iy.    PuTTY for Windows               Remote shell                  Internet      %version_putty%
    ECHO ip36.  Python 3.6.x for Windows        Script engine legacy          Internet      %version_python36x_major_minor_build%
    ECHO ip37.  Python 3.7.x for Windows        Script engine legacy          Internet      %version_python37x_major_minor_build%
    ECHO ip38.  Python 3.8.x for Windows        Script engine legacy          Internet      %version_python38x_major_minor_build%
    ECHO ip39.  Python 3.9.x for Windows        Script engine latest GA       Internet      %version_python39x_major_minor_build%
    ECHO it.    TreeSize Free for Windows       Files/folders/drives anal.    Internet      %version_treesize%
    ECHO iv.    VLC                             Multimedia files player       Internet      %version_vlc%
    ECHO iw.    WinSCP                          Multiple prot. file handler   Internet      %version_winscp%
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO ipve.  Python Virtual Environment initiation or update for Given Python project
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO z.     Quit
    ECHO -----------------------------------------------------------------------------------------------------------
    IF DEFINED variable_invalid_install_choice_typed (
        ECHO !!! YOU REALLY HAVE TO PAY ATTENTION TO AVAILABLE CHOICES !!!
        ECHO Choice provided [%CHOICE_INSTALL%] is not a valid one... :-(
    )
    SET /P CHOICE_INSTALL=Please express your choice now:
    IF /I "%CHOICE_INSTALL%"=="ia" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheHTTPd ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iame" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModEvasive ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iamf" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModFcgid ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iamlr" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModLogRotate ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iams" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModSecurity ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="id" ( CALL :InitiateOrUpdateFrameworkInfrastructure__DoubleCommander ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="ig" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Git ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="in" ( CALL :InitiateOrUpdateFrameworkInfrastructure__NotepadPlusPlus ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="ih74" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Php74x ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="ih80" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Php80x ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iz" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PeaZip ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iy" ( CALL :InitiateOrUpdateFrameworkInfrastructure__PuTTY ) ELSE (
        IF /I "%CHOICE_INSTALL%"=="ip36" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Python36x ) ELSE (
        IF /I "%CHOICE_INSTALL%"=="ip37" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Python37x ) ELSE (
        IF /I "%CHOICE_INSTALL%"=="ip38" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Python38x ) ELSE (
        IF /I "%CHOICE_INSTALL%"=="ip39" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Python39x ) ELSE (
        IF /I "%CHOICE_INSTALL%"=="ipve" ( CALL :Menu__PythonProject ) ELSE (
            IF /I "%CHOICE_INSTALL%"=="it" ( CALL :InitiateOrUpdateFrameworkInfrastructure__TreeSize ) ELSE (
            IF /I "%CHOICE_INSTALL%"=="iv" ( CALL :InitiateOrUpdateFrameworkInfrastructure__VLC ) ELSE (
            IF /I "%CHOICE_INSTALL%"=="iw" ( CALL :InitiateOrUpdateFrameworkInfrastructure__WinSCP ) ELSE (
                IF /I "%CHOICE_INSTALL%"=="z" ( CALL :DecisionToQuitTakeFinalMessage ) ELSE (
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
GOTO END

REM ----------------------------------------------------------------------------
REM End of Main Part
REM ----------------------------------------------------------------------------

:END
