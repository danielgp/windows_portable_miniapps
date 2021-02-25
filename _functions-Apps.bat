call %*
GOTO END

REM ----------------------------------------------------------------------------
REM Versioning
REM ----------------------------------------------------------------------------

:EstablishThisScriptVersionDetails
    SET this_script_version=1.0.7
    SET this_script_release_date=2021-02-25
GOTO END

:EstablishVersions
    SET version_apache_httpd=2.4.46
    SET version_apache_mod_evasive=2.2.0
    SET version_apache_mod_fcgid=2.3.10
    SET version_apache_mod_log_rotate=1.0.2
    SET version_apache_mod_security=2.9.3
    SET version_apache_tomcat9x=9.0.43
    SET version_apache_tomcat10x=10.0.2
    SET version_double_commander=1.0.9651
    SET version_double_commander_kit=%version_double_commander:0.=0a-%
    SET version_git=2.30.1
    SET version_git_windows_compilation=.windows.1
    SET version_jdk=15.0.2
    SET version_jdk_subfolder=0d1cfde4252546c6931946de8db48ee2/7
    SET version_mysql_router=8.0.23
    SET version_mysql_server_community=8.0.23
    SET version_nodejs_current=15.9.0
    SET version_notepad_plus_plus=7.9.3
    SET version_peazip=7.7.1
    SET version_php74x=7.4.15
    SET version_php80x=8.0.2
    SET version_putty=0.74
    SET version_python36x_major_minor=3.6
    SET version_python36x_major_minor_build=3.6.8
    SET version_python37x_major_minor=3.7
    SET version_python37x_major_minor_build=3.7.9
    SET version_python38x_major_minor=3.8
    SET version_python38x_major_minor_build=3.8.8
    SET version_python39x_major_minor=3.9
    SET version_python39x_major_minor_build=3.9.2
    SET version_treesize=4.4.2
    SET version_vlc=3.0.12
    SET version_winscp=5.17.10
    SET custom_user_agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0
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
    SET apache_tomcat9x__application_main_binary=bin\tomcat9.exe
    SET apache_tomcat9x__application_name=Apache Tomcat 9.x for Windows
    SET apache_tomcat10x__application_main_binary=bin\tomcat10.exe
    SET apache_tomcat10x__application_name=Apache Tomcat 10.x for Windows
    SET double_commander__application_main_binary=doublecmd.exe
    SET double_commander__application_name=Double Commander for Windows
    SET git__application_main_binary=git-cmd.exe
    SET git__application_name=Git for Windows
    SET jdk__application_main_binary=bin\java.exe
    SET jdk__application_name=Java Development Kit for Windows
    SET mysql_server_community__application_main_binary=bin\mysql.exe
    SET mysql_server_community__application_name=MySQL Server Community
    SET mysql_router__application_main_binary=mysql-router.exe
    SET mysql_router__application_name=MySQL Router
    SET nodejs__application_main_binary=node.exe
    SET nodejs_current__application_name=NodeJS for Windows Current
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
    SET url_apache_tomcat9x_archive=apache-tomcat-%version_apache_tomcat9x%-windows-x64.zip
    SET url_apache_tomcat9x_archive_includes_folder=Yes
    SET url_apache_tomcat9x_archive_included_folder_name=apache-tomcat-%version_apache_tomcat9x%
    SET url_apache_tomcat9x=https://mirrors.hostingromania.ro/apache.org/tomcat/tomcat-9/v%version_apache_tomcat9x%/bin/%url_apache_tomcat9x_archive%
    SET url_apache_tomcat10x_archive=apache-tomcat-%version_apache_tomcat10x%-windows-x64.zip
    SET url_apache_tomcat10x_archive_includes_folder=Yes
    SET url_apache_tomcat10x_archive_included_folder_name=apache-tomcat-%version_apache_tomcat10x%
    SET url_apache_tomcat10x=https://mirrors.hostingromania.ro/apache.org/tomcat/tomcat-10/v%version_apache_tomcat10x%/bin/%url_apache_tomcat10x_archive%
    SET url_double_commander_archive=DoubleCmd-%version_double_commander_kit%-Win32X64.7z
    SET url_double_commander_archive_includes_folder=No
    SET url_double_commander=https://github.com/double-commander/doublecmd/releases/download/%version_double_commander%/%url_double_commander_archive%
    SET version_git_enhanced=%version_git%
    IF "%version_git_windows_compilation%"==".windows.2" (
        SET version_git_enhanced=%version_git%.2
    )
    IF "%version_git_windows_compilation%"==".windows.3" (
        SET version_git_enhanced=%version_git%.3
    )
    SET url_git_archive=PortableGit-%version_git_enhanced%-64-bit.7z.exe
    SET url_git_archive_includes_folder=Yes
    SET url_git_archive_included_folder_name=PortableGit
    SET url_git=https://github.com/git-for-windows/git/releases/download/v%version_git%%version_git_windows_compilation%/%url_git_archive%
    SET url_jdk_archive=openjdk-%version_jdk%_windows-x64_bin.zip
    SET url_jdk_archive_includes_folder=Yes
    SET url_jdk_archive_included_folder_name=jdk-%version_jdk%
    SET url_jdk=https://download.java.net/java/GA/jdk%version_jdk%/%version_jdk_subfolder%/GPL/%url_jdk_archive%
    SET url_mysql_router_archive=mysql-router-%version_mysql_router%-winx64.zip
    SET url_mysql_router_archive_includes_folder=Yes
    SET url_mysql_router_archive_includes_folder_name=mysql-router-%version_mysql_router%-winx64
    SET url_mysql_router=https://dev.mysql.com/get/Downloads/MySQL-Router/%url_mysql_router_archive%
    SET url_mysql_server_community_archive=mysql-%version_mysql_server_community%-winx64.zip
    SET url_mysql_server_community_archive_includes_folder=Yes
    SET url_mysql_server_community_archive_includes_folder_name=mysql-%version_mysql_server_community%-winx64
    SET url_mysql_server_community=https://dev.mysql.com/get/Downloads/MySQL-8.0/%url_mysql_server_community_archive%
    SET url_nodejs_current_archive=node-v%version_nodejs_current%-win-x64.zip
    SET url_nodejs_current_archive_includes_folder=Yes
    SET url_nodejs_current_archive_includes_folder_name=node-v%version_nodejs_current%-win-x64
    SET url_nodejs_current=https://nodejs.org/dist/v%version_nodejs_current%/%url_nodejs_current_archive%
    SET url_notepad_plus_plus_archive=npp.%version_notepad_plus_plus%.portable.x64.zip
    SET url_notepad_plus_plus_archive_includes_folder=No
    SET url_notepad_plus_plus=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v%version_notepad_plus_plus%/%url_notepad_plus_plus_archive%
    SET url_peazip_archive=peazip_portable-%version_peazip%.WIN64.zip
    SET url_peazip_archive_includes_folder=Yes
    SET url_peazip_archive_included_folder_name=peazip_portable-%version_peazip%.WIN64
    SET url_peazip=https://github.com/giorgiotani/PeaZip/releases/download/%version_peazip%/%url_peazip_archive%
    SET url_php_archive_74x=php-%version_php74x%-nts-Win32-vc15-x64.zip
    SET url_php_archive_74x_includes_folder=No
    SET url_php74x=https://windows.php.net/downloads/releases/%url_php_archive_74x%
    SET url_php_archive_80x=php-%version_php80x%-nts-Win32-vs16-x64.zip
    SET url_php_archive_80x_includes_folder=No
    SET url_php80x=https://windows.php.net/downloads/releases/%url_php_archive_80x%
    SET url_putty_archive=putty.zip
    SET url_putty_archive_includes_folder=No
    SET url_putty=https://the.earth.li/~sgtatham/putty/latest/w64/%url_putty_archive%
    SET url_python_pip=https://bootstrap.pypa.io/get-pip.py
    SET url_python36x_archive=python-%version_python36x_major_minor_build%-embed-amd64.zip
    SET url_python36x_archive_includes_folder=No
    SET url_python36x=https://www.python.org/ftp/python/%version_python36x_major_minor_build%/%url_python36x_archive%
    SET url_python36x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python36x_major_minor%/virtualenv.pyz
    SET url_python37x_archive=python-%version_python37x_major_minor_build%-embed-amd64.zip
    SET url_python37x_archive_includes_folder=No
    SET url_python37x=https://www.python.org/ftp/python/%version_python37x_major_minor_build%/%url_python37x_archive%
    SET url_python37x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python37x_major_minor%/virtualenv.pyz
    SET url_python38x_archive=python-%version_python38x_major_minor_build%-embed-amd64.zip
    SET url_python38x_archive_includes_folder=No
    SET url_python38x=https://www.python.org/ftp/python/%version_python38x_major_minor_build%/%url_python38x_archive%
    SET url_python38x_virtualenv=https://bootstrap.pypa.io/virtualenv/%version_python38x_major_minor%/virtualenv.pyz
    SET url_python39x_archive=python-%version_python39x_major_minor_build%-embed-amd64.zip
    SET url_python39x_archive_includes_folder=No
    SET url_python39x=https://www.python.org/ftp/python/%version_python39x_major_minor_build%/%url_python39x_archive%
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
    SET path_web_applications_configuration=C:\www\Config\
    SET path_web_applications_logs=C:\www\other\logs\
    SET path_web_applications_temporary=C:\www\other\temp\
    SET path_developer_applications=C:\www\AppForDeveloper\
    SET path_developer_applications__root__apache_httpd=%path_web_applications%Apache_HTTPd
    SET path_developer_applications_apache_httpd=%path_developer_applications__root__apache_httpd%\%version_apache_httpd%-64bit
    SET path_developer_applications__root__apache_mod_evasive=%path_web_applications%Apache_Module_Evasive
    SET path_developer_applications_apache_mod_evasive=%path_developer_applications__root__apache_mod_evasive%\%version_apache_mod_evasive%-64bit
    SET path_developer_applications__root__apache_mod_fcgid=%path_web_applications%Apache_Module_FCGId
    SET path_developer_applications_apache_mod_fcgid=%path_developer_applications__root__apache_mod_fcgid%\%version_apache_mod_fcgid%-64bit
    SET path_developer_applications__root__apache_mod_log_rotate=%path_web_applications%Apache_Module_Log_Rotate
    SET path_developer_applications_apache_mod_log_rotate=%path_developer_applications__root__apache_mod_log_rotate%\%version_apache_mod_log_rotate%-64bit
    SET path_developer_applications__root__apache_mod_security=%path_web_applications%Apache_Module_Security
    SET path_developer_applications_apache_mod_security=%path_developer_applications__root__apache_mod_security%\%version_apache_mod_security%-64bit
    SET path_developer_applications__root__apache_tomcat9x=%path_web_applications%Apache_Tomcat
    SET path_developer_applications_apache_tomcat9x=%path_developer_applications__root__apache_tomcat9x%\%version_apache_tomcat9x%-64bit
    SET path_developer_applications__root__apache_tomcat10x=%path_web_applications%Apache_Tomcat
    SET path_developer_applications_apache_tomcat10x=%path_developer_applications__root__apache_tomcat10x%\%version_apache_tomcat10x%-64bit
    SET path_developer_applications__root__double_commander=%path_developer_applications%DoubleCommander
    SET path_developer_applications_double_commander=%path_developer_applications__root__double_commander%\%version_double_commander%-64bit
    SET path_developer_applications__root__git=%path_developer_applications%Git
    SET path_developer_applications_git=%path_developer_applications__root__git%\%version_git_enhanced%-64bit
    SET path_developer_applications__root__jdk=%path_web_applications%Java_Development_Kit
    SET path_developer_applications_jdk=%path_developer_applications__root__jdk%\%version_jdk%-64bit
    SET path_developer_applications__rootS__mysql=MySQL
    SET path_developer_applications__root__mysql=%path_web_applications%%path_developer_applications__rootS__mysql%
    SET path_developer_applications_mysql_router=%path_developer_applications__root__mysql%\Router-%version_mysql_server_community%-64bit
    SET path_developer_applications_mysql_server_community=%path_developer_applications__root__mysql%\Server-%version_mysql_server_community%-64bit
    SET path_developer_applications__root__nodejs=%path_developer_applications%NodeJS
    SET path_developer_applications_nodejs_current=%path_developer_applications__root__nodejs%\%version_nodejs_current%-64bit
    SET path_developer_applications__root__notepad_plus_plus=%path_developer_applications%Notepad++
    SET path_developer_applications_notepad_plus_plus=%path_developer_applications__root__notepad_plus_plus%\%version_notepad_plus_plus%-64bit
    SET path_developer_applications__root__peazip=%path_developer_applications%PeaZip
    SET path_developer_applications_peazip=%path_developer_applications__root__peazip%\%version_peazip%-64bit
    SET path_developer_applications__rootS__php=PHP
    SET path_developer_applications__root__php=%path_web_applications%%path_developer_applications__rootS__php%
    SET path_developer_applications_php74x=%path_developer_applications__root__php%\%version_php74x%-64bit
    SET path_developer_applications_php80x=%path_developer_applications__root__php%\%version_php80x%-64bit
    SET path_developer_applications__root__putty=%path_developer_applications%PuTTY
    SET path_developer_applications_putty=%path_developer_applications__root__putty%\%version_putty%-64bit
    SET path_developer_applications__root__python=%path_developer_applications%Python
    SET path_developer_applications_python37x=%path_developer_applications__root__python%\%version_python37x_major_minor_build%-64bit
    SET path_developer_applications_python37x_modules=%path_developer_applications__root__python%\%version_python37x_major_minor_build%-modules
    SET path_developer_applications_python38x=%path_developer_applications__root__python%\%version_python38x_major_minor_build%-64bit
    SET path_developer_applications_python38x_modules=%path_developer_applications__root__python%\%version_python38x_major_minor_build%-modules
    SET path_developer_applications_python39x=%path_developer_applications__root__python%\%version_python39x_major_minor_build%-64bit
    SET path_developer_applications_python39x_modules=%path_developer_applications__root__python%\%version_python39x_major_minor_build%-modules
    SET path_developer_applications__root__treesize=%path_developer_applications%TreeSize
    SET path_developer_applications_treesize=%path_developer_applications__root__treesize%\%version_treesize%-32bit
    SET path_developer_applications__root__vlc=%path_developer_applications%VLC
    SET path_developer_applications_vlc=%path_developer_applications__root__vlc%\%version_vlc%-64bit
    SET path_developer_applications__root__winscp=%path_developer_applications%WinSCP
    SET path_developer_applications_winscp=%path_developer_applications__root__winscp%\%version_winscp%-64bit
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
    IF EXIST %path_downloads%\%url_application_archive% (
        ECHO Removing %path_downloads%\%url_application_archive%
        DEL %path_downloads%\%url_application_archive%
    )
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    CALL :CreateDownloadsFolder
    ECHO Checking for %path_developer_application_specific%\%application_main_binary% existance
    :: Check if main binary of application is already in place
    IF EXIST %path_developer_application_specific%\%application_main_binary% (
        ECHO %path_developer_application_specific%\%application_main_binary% is already in place there is nothing more I can do here
    ) ELSE (
        ECHO Checking if kit %path_downloads%%url_application_archive% is not already downloaded
        :: Donwload the archive but only if is not already in place
        IF NOT EXIST %path_downloads%%url_application_archive% (
            ECHO Will download portable version of %application_name%, version %version_application%, using PowerShell, as this action implies a active download this may take a while, more or less depending on your bandwith and Internet workload at this time, set back and be patient
            powershell.exe -command "$cli = New-Object System.Net.WebClient;$cli.Headers['User-Agent'] = '%custom_user_agent%';$cli.DownloadFile('%url_application_full%','%path_downloads%%url_application_archive%')"
        )
        ECHO Checking if kit %path_downloads%%url_application_archive% is downloaded
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
                ) ELSE (
                    IF EXIST "%path_downloads%%url_application_archive%" (
                        ECHO Will extract downloaded kit %url_application_archive% to a intermediary destination folder, using PowerShell
                        powershell.exe Expand-Archive -Path %path_downloads%%url_application_archive% -DestinationPath %path_downloads%
                    )
                )
            )
            IF "%url_application_archive_includes_folder%"=="Yes" (
                IF NOT EXIST %path_developer_application_specific%\%application_main_binary% (
                    ECHO Will move files from intermediary destination folder %path_downloads%%url_application_archive_included_folder_name% to final destination %path_developer_application_specific%
                    XCOPY %path_downloads%%url_application_archive_included_folder_name% %path_developer_application_specific% /Q /C /S /J /R /H /Y
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

:CreateWebApplicationsOperationalFolders
    IF NOT EXIST %path_web_applications_configuration% (
        ECHO Creating configuration folder
        MD %path_web_applications_configuration%
    )
    IF NOT EXIST %path_web_applications_logs% (
        ECHO Creating logs folder
        MD %path_web_applications_logs%
    )
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

:DetectVersions__Generic
    REM ECHO Searching for %generic_application_folder%\%exact_version_folder%
    IF EXIST "%generic_application_folder%\%exact_version_folder%" (
        REM ECHO Version targeted is %exact_version%
        IF /I "%application_action_to_do%"=="ApacheHTTPd" (
            SET detected_version_apache_httpd=%exact_version%
            IF "%version_apache_httpd%" NEQ "%exact_version%" (
                SET detected_version_apache_httpd_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="ApacheModEvasive" (
            SET detected_version_apache_mod_evasive=%exact_version%
            IF "%version_apache_mod_evasive%" NEQ "%exact_version%" (
                SET detected_version_apache_mod_evasive_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="ApacheModFCGId" (
            SET detected_version_apache_mod_fcgid=%exact_version%
            IF "%version_apache_mod_fcgid%" NEQ "%exact_version%" (
                SET detected_version_apache_mod_fcgid_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="ApacheModLogRotate" (
            SET detected_version_apache_mod_log_rotate=%exact_version%
            IF "%version_apache_mod_log_rotate%" NEQ "%exact_version%" (
                SET detected_version_apache_mod_log_rotate_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="ApacheModSecurity" (
            SET detected_version_apache_mod_security=%exact_version%
            IF "%version_apache_mod_security%" NEQ "%exact_version%" (
                SET detected_version_apache_mod_security_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="ApacheTomcat9x" (
            SET detected_version_apache_tomcat9x=%exact_version%
            IF "%version_apache_tomcat9x%" NEQ "%exact_version%" (
                SET detected_version_apache_tomcat9x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="ApacheTomcat10x" (
            SET detected_version_apache_tomcat10x=%exact_version%
            IF "%version_apache_tomcat10x%" NEQ "%exact_version%" (
                SET detected_version_apache_tomcat10x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="DoubleCommander" (
            SET detected_version_double_commander=%exact_version%
            IF "%version_double_commander%" NEQ "%exact_version%" (
                SET detected_version_double_commander_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="Git" (
            SET detected_version_git=%exact_version%
            IF "%version_git_enhanced%" NEQ "%exact_version%" (
                SET detected_version_git_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="JDK" (
            SET detected_version_jdk=%exact_version%
            IF "%version_jdk%" NEQ "%exact_version%" (
                SET detected_version_jdk_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="NodeJS_Current" (
            SET detected_version_nodejs_current=%exact_version%
            IF "%version_nodejs_current%" NEQ "%exact_version%" (
                SET detected_version_nodejs_current_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="NotepadPlusPlus" (
            SET detected_version_notepad_plus_plus=%exact_version%
            IF "%version_notepad_plus_plus%" NEQ "%exact_version%" (
                SET detected_version_notepad_plus_plus_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="MySqlRouter" (
            SET detected_version_mysql_router=%exact_version%
            IF "%version_mysql_router%" NEQ "%exact_version%" (
                SET detected_version_mysql_router_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="MySqlServerCommunity" (
            SET detected_version_mysql_server_community=%exact_version%
            IF "%version_mysql_server_community%" NEQ "%exact_version%" (
                SET detected_version_mysql_server_community_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="PHP74x" (
            SET detected_version_php74x=%exact_version%
            IF "%version_php74x%" NEQ "%exact_version%" (
                SET detected_version_php74x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="PHP80x" (
            SET detected_version_php80x=%exact_version%
            IF "%version_php80x%" NEQ "%exact_version%" (
                SET detected_version_php80x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="PeaZip" (
            SET detected_version_peazip=%exact_version%
            IF "%version_peazip%" NEQ "%exact_version%" (
                SET detected_version_peazip_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="Putty" (
            SET detected_version_putty=%exact_version%
            IF "%version_putty%" NEQ "%exact_version%" (
                SET detected_version_putty_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="Python36x" (
            SET detected_version_python36x=%exact_version%
            IF "%version_python36x_major_minor_build%" NEQ "%exact_version%" (
                SET detected_version_python36x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="Python37x" (
            SET detected_version_python37x=%exact_version%
            IF "%version_python37x_major_minor_build%" NEQ "%exact_version%" (
                SET detected_version_python37x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="Python38x" (
            SET detected_version_python38x=%exact_version%
            IF "%version_python38x_major_minor_build%" NEQ "%exact_version%" (
                SET detected_version_python38x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="Python39x" (
            SET detected_version_python39x=%exact_version%
            IF "%version_python39x_major_minor_build%" NEQ "%exact_version%" (
                SET detected_version_python39x_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="TreeSize" (
            SET detected_version_treesize=%exact_version%
            IF "%version_treesize%" NEQ "%exact_version%" (
                SET detected_version_treesize_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="VLC" (
            SET detected_version_vlc=%exact_version%
            IF "%version_vlc%" NEQ "%exact_version%" (
                SET detected_version_vlc_newer=***
            )
        )
        IF /I "%application_action_to_do%"=="WinSCP" (
            SET detected_version_winscp=%exact_version%
            IF "%version_winscp%" NEQ "%exact_version%" (
                SET detected_version_winscp_newer=***
            )
        )
    )
GOTO END

:MultipleActionsToDo_AllSequences
    IF /I "%action_to_do%"=="detect_versions" (
        CALL :DetectVersions__Generic
    )
    IF /I "%action_to_do%"=="remove_old_versions" (
        CALL :RemoveFolderWithOlderVersions
    )
GOTO END

:MultipleActionsToDo
    IF /I "%application_action_to_do%"=="ApacheHTTPd" (
        SET detected_version_apache_httpd_newer=_
        SET exact_version=%version_apache_httpd%
        SET exact_version_folder=%version_apache_httpd%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_httpd%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (2.2.43) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=httpd-%%i-win64-VS16.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="ApacheModEvasive" (
        SET detected_version_apache_mod_evasive_newer=_
        SET exact_version=%version_apache_mod_evasive%
        SET exact_version_folder=%version_apache_mod_evasive%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_mod_evasive%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (2.1.0) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=mod_evasive-%%i-win64-VS16.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="ApacheModFCGId" (
        SET detected_version_apache_mod_fcgid_newer=_
        SET exact_version=%version_apache_mod_fcgid%
        SET exact_version_folder=%version_apache_mod_fcgid%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_mod_fcgid%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (2.3.9) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=mod_fcgid-%%i-win64-VS16.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="ApacheModLogRotate" (
        SET detected_version_apache_mod_log_rotate_newer=_
        SET exact_version=%version_apache_mod_log_rotate%
        SET exact_version_folder=%version_apache_mod_log_rotate%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_mod_log_rotate%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (1.0.0 1.0.1) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=mod_log_rotate-%%i-win64-VS16.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="ApacheModSecurity" (
        SET detected_version_apache_mod_security_newer=_
        SET exact_version=%version_apache_mod_security%
        SET exact_version_folder=%version_apache_mod_security%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_mod_security%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (2.9.1 2.9.2) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=mod_security-%%i-win64-VS16.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="ApacheTomcat9x" (
        SET detected_version_apache_tomcat9x_newer=_
        SET exact_version=%version_apache_tomcat9x%
        SET exact_version_folder=%version_apache_tomcat9x%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_tomcat9x%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (9.0.38 9.0.39 9.0.40 9.0.41) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=apache-tomcat-%%i-windows-x64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="ApacheTomcat10x" (
        SET detected_version_apache_tomcat10x_newer=_
        SET exact_version=%version_apache_tomcat10x%
        SET exact_version_folder=%version_apache_tomcat10x%-64bit
        SET generic_application_folder=%path_developer_applications__root__apache_tomcat10x%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (10.0.0 10.0.1) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=apache-tomcat-%%i-windows-x64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="DoubleCommander" (
        SET detected_version_double_commander_newer=_
        SET exact_version=%version_double_commander%
        SET exact_version_folder=%version_double_commander%-64bit
        SET generic_application_folder=%path_developer_applications__root__double_commander%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (1.0.9375 1.0.9483) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=DoubleCmd-%%i-Win32X64.7z
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="Git" (
        SET detected_version_git_newer=_
        SET exact_version=%version_git_enhanced%
        SET exact_version_folder=%version_git_enhanced%-64bit
        SET generic_application_folder=%path_developer_applications__root__git%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (2.23.0 2.26.1 2.26.2 2.27.0 2.28.0 2.29.0 2.29.1 2.29.2 2.29.2.2 2.29.2.3 2.30.0 2.30.0.2) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=PortableGit-%%i-64-bit.7z.exe
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="JDK" (
        SET detected_version_jdk_newer=_
        SET exact_version=%version_jdk%
        SET exact_version_folder=%version_jdk%-64bit
        SET generic_application_folder=%path_developer_applications__root__jdk%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (15.0.0 15.0.1) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=openjdk-%%i_windows-x64_bin.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="NodeJS_Current" (
        SET detected_version_nodejs_current_newer=_
        SET exact_version=%version_nodejs_current%
        SET exact_version_folder=%version_nodejs_current%-64bit
        SET generic_application_folder=%path_developer_applications__root__nodejs%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (15.6.0 15.7.0 15.8.0) do (
            IF EXIST "%path_developer_applications__root__nodejs%\%%i-64bit" (
                SET exact_version=%%i
                SET exact_version_folder=%%i-64bit
                SET url_application_archive=node-%%i-win-x64.zip
                CALL :MultipleActionsToDo_AllSequences
            )
        )
    )
    IF /I "%application_action_to_do%"=="NotePadPlusPlus" (
        SET detected_version_notepad_plus_plus_newer=_
        SET exact_version=%version_notepad_plus_plus%
        SET exact_version_folder=%version_notepad_plus_plus%-64bit
        SET generic_application_folder=%path_developer_applications__root__notepad_plus_plus%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (7.8.1 7.8.2 7.8.3 7.8.4 7.8.5 7.8.6 7.8.7 7.8.8 7.8.9 7.9 7.9.1 7.9.2) do (
            IF EXIST "%path_developer_applications__root__notepad_plus_plus%\%%i-64bit" (
                for %%j in (session.xml config.xml) do (
                    REM ECHO Detecting %path_developer_applications__root__notepad_plus_plus%\%%i-64bit\%%j
                    IF EXIST "%path_developer_applications__root__notepad_plus_plus%\%%i-64bit\%%j" (
                        REM ECHO Copying %path_developer_applications__root__notepad_plus_plus%\%%i-64bit\%%j to %path_developer_applications_notepad_plus_plus%
                        XCOPY %path_developer_applications__root__notepad_plus_plus%\%%i-64bit\%%j %path_developer_applications_notepad_plus_plus%
                    )
                )
                IF EXIST "%path_developer_applications__root__notepad_plus_plus%\%%i-64bit\backup\" (
                    XCOPY "%path_developer_applications__root__notepad_plus_plus%\%%i-64bit\backup\" %path_developer_applications_notepad_plus_plus%\backup\ /c /s /r /h /y
                )
                SET exact_version=%%i
                SET exact_version_folder=%%i-64bit
                SET url_application_archive=npp.%%i.portable.x64.zip
                CALL :MultipleActionsToDo_AllSequences
            )
        )
    )
    IF /I "%application_action_to_do%"=="MySqlRouter" (
        SET detected_version_mysql_router_newer=_
        SET exact_version=%version_mysql_router%
        SET exact_version_folder=Router-%version_mysql_router%-64bit
        SET generic_application_folder=%path_developer_applications__root__mysql%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (8.0.20 8.0.21 8.0.22) do (
            SET exact_version=%%i
            SET exact_version_folder=Router-%%i-64bit
            SET url_application_archive=mysql-router-%%i-winx64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="MySqlServerCommunity" (
        SET detected_version_mysql_server_community=_
        SET exact_version=%version_mysql_server_community%
        SET exact_version_folder=Server-%version_mysql_server_community%-64bit
        SET generic_application_folder=%path_developer_applications__root__mysql%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (8.0.20 8.0.21 8.0.22) do (
            SET exact_version=%%i
            SET exact_version_folder=Server-%%i-64bit
            SET url_application_archive=mysql-%%i-winx64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="PHP74x" (
        SET detected_version_php74x_newer=_
        SET exact_version=%version_php74x%
        SET exact_version_folder=%version_php74x%-64bit
        SET generic_application_folder=%path_developer_applications__root__php%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (7.4.0 7.4.1 7.4.2 7.4.3 7.4.4 7.4.5 7.4.6 7.4.7 7.4.8 7.4.9 7.4.10 7.4.11 7.4.12 7.4.13 7.4.14) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=php-%%i-nts-Win32-vc15-x64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="PHP80x" (
        SET detected_version_php80x_newer=_
        SET exact_version=%version_php80x%
        SET exact_version_folder=%version_php80x%-64bit
        SET generic_application_folder=%path_developer_applications__root__php%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (8.0.0 8.0.1) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=php-%%i-nts-Win32-vs16-x64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="PeaZip" (
        SET detected_version_peazip_newer=_
        SET exact_version=%version_peazip%
        SET exact_version_folder=%version_peazip%-64bit
        SET generic_application_folder=%path_developer_applications__root__peazip%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (7.2.0 7.2.1 7.2.2 7.3.0 7.3.1 7.3.2 7.4.0 7.4.1 7.4.2 7.5.0 7.6.0 7.7.0) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=peazip_portable-%%i.WIN64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="Putty" (
        SET detected_version_putty_newer=_
        SET exact_version=%version_putty%
        SET exact_version_folder=%version_putty%-64bit
        SET generic_application_folder=%path_developer_applications__root__putty%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (0.72 0.73) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET generic_application_folder=%path_developer_applications__root__putty%
            REM as name is fixed, removal of old versions is not neccsesary
            SET url_application_archive=putty9999.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="Python36x" (
        SET detected_version_python36x_newer=_
        SET exact_version=%version_python36x_major_minor_build%
        SET exact_version_folder=%version_python36x_major_minor_build%-64bit
        SET generic_application_folder=%path_developer_applications__root__python%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (3.6.0 3.6.1 3.6.2 3.6.3 3.6.4 3.6.5 3.6.6 3.6.7) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=python-%%i-embed-amd64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="Python37x" (
        SET detected_version_python37x_newer=_
        SET exact_version=%version_python37x_major_minor_build%
        SET exact_version_folder=%version_python37x_major_minor_build%-64bit
        SET generic_application_folder=%path_developer_applications__root__python%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (3.7.0 3.7.1 3.7.2 3.7.3 3.7.4 3.7.5 3.7.6 3.7.7 3.7.8) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=python-%%i-embed-amd64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="Python38x" (
        SET detected_version_python38x_newer=_
        SET exact_version=%version_python38x_major_minor_build%
        SET exact_version_folder=%version_python38x_major_minor_build%-64bit
        SET generic_application_folder=%path_developer_applications__root__python%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (3.8.0 3.8.1 3.8.2 3.8.3 3.8.4 3.8.5 3.8.6 3.8.7) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=python-%%i-embed-amd64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="Python39x" (
        SET detected_version_python39x_newer=_
        SET exact_version=%version_python39x_major_minor_build%
        SET exact_version_folder=%version_python39x_major_minor_build%-64bit
        SET generic_application_folder=%path_developer_applications__root__python%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (3.9.0 3.9.1) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=python-%%i-embed-amd64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="TreeSize" (
        SET detected_version_treesize_newer=_
        SET exact_version=%version_treesize%
        SET exact_version_folder=%version_treesize%-32bit
        SET generic_application_folder=%path_developer_applications__root__treesize%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (4.4.0 4.4.1) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-32bit
            REM as name is fixed, removal of old versions is not neccsesary
            SET url_application_archive=TreeSizeFree-Portable9999.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="VLC" (
        SET detected_version_vlc_newer=_
        SET exact_version=%version_vlc%
        SET exact_version_folder=%version_vlc%-64bit
        SET generic_application_folder=%path_developer_applications__root__vlc%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (3.0.8 3.0.9 3.0.10 3.0.11) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=vlc-%%i-win64.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    IF /I "%application_action_to_do%"=="WinSCP" (
        SET detected_version_winscp_newer=_
        SET exact_version=%version_winscp%
        SET exact_version_folder=%version_winscp%-64bit
        SET generic_application_folder=%path_developer_applications__root__winscp%
        IF /I "%action_to_do%"=="detect_versions" (
            CALL :DetectVersions__Generic
        )
        for %%i in (5.17.5 5.17.6 5.17.7 5.17.8 5.17.9) do (
            SET exact_version=%%i
            SET exact_version_folder=%%i-64bit
            SET url_application_archive=WinSCP-%%i-Portable.zip
            CALL :MultipleActionsToDo_AllSequences
        )
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO END

:DetectExistingVersions
    ECHO %DATE% %TIME% - Detecting existing version in progress...
    SET action_to_do=detect_versions
    SET application_action_to_do=ApacheHTTPd
    CALL :MultipleActionsToDo
    SET application_action_to_do=ApacheModEvasive
    CALL :MultipleActionsToDo
    SET application_action_to_do=ApacheModFCGId
    CALL :MultipleActionsToDo
    SET application_action_to_do=ApacheModLogRotate
    CALL :MultipleActionsToDo
    SET application_action_to_do=ApacheModSecurity
    CALL :MultipleActionsToDo
    SET application_action_to_do=ApacheTomcat9x
    CALL :MultipleActionsToDo
    SET application_action_to_do=ApacheTomcat10x
    CALL :MultipleActionsToDo
    SET application_action_to_do=DoubleCommander
    CALL :MultipleActionsToDo
    SET application_action_to_do=Git
    CALL :MultipleActionsToDo
    SET application_action_to_do=JDK
    CALL :MultipleActionsToDo
    SET application_action_to_do=MySqlRouter
    CALL :MultipleActionsToDo
    SET application_action_to_do=MySqlServerCommunity
    CALL :MultipleActionsToDo
    SET application_action_to_do=NodeJS_Current
    CALL :MultipleActionsToDo
    SET application_action_to_do=NodeJS_LongTimeSupport
    CALL :MultipleActionsToDo
    SET application_action_to_do=NotepadPlusPlus
    CALL :MultipleActionsToDo
    SET application_action_to_do=PeaZip
    CALL :MultipleActionsToDo
    SET application_action_to_do=PHP74x
    CALL :MultipleActionsToDo
    SET application_action_to_do=PHP80x
    CALL :MultipleActionsToDo
    SET application_action_to_do=Putty
    CALL :MultipleActionsToDo
    SET application_action_to_do=Python36x
    CALL :MultipleActionsToDo
    SET application_action_to_do=Python37x
    CALL :MultipleActionsToDo
    SET application_action_to_do=Python38x
    CALL :MultipleActionsToDo
    SET application_action_to_do=Python39x
    CALL :MultipleActionsToDo
    SET application_action_to_do=TreeSize
    CALL :MultipleActionsToDo
    SET application_action_to_do=VLC
    CALL :MultipleActionsToDo
    SET application_action_to_do=WinSCP
    CALL :MultipleActionsToDo
    ECHO %DATE% %TIME% - Detecting existing version in progress completed
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
    SET application_action_to_do=ApacheHTTPd
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=ApacheModEvasive
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=ApacheModFCGId
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=ApacheModLogRotate
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=ApacheModSecurity
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__ApacheTomcat9x
    SET application_main_binary=%apache_tomcat9x__application_main_binary%
    SET application_name=%apache_tomcat9x__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_tomcat9x%
    SET url_application_archive=%url_apache_tomcat9x_archive%
    SET url_application_archive_includes_folder=%url_apache_tomcat9x_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_tomcat9x_archive_included_folder_name%
    SET url_application_full=%url_apache_tomcat9x%
    SET version_application=%version_apache_tomcat9x%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    SET application_action_to_do=ApacheTomcat9x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__ApacheTomcat10x
    SET application_main_binary=%apache_tomcat10x__application_main_binary%
    SET application_name=%apache_tomcat10x__application_name%
    SET path_developer_application_specific=%path_developer_applications_apache_tomcat10x%
    SET url_application_archive=%url_apache_tomcat10x_archive%
    SET url_application_archive_includes_folder=%url_apache_tomcat10x_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_apache_tomcat10x_archive_included_folder_name%
    SET url_application_full=%url_apache_tomcat10x%
    SET version_application=%version_apache_tomcat10x%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    SET application_action_to_do=ApacheTomcat10x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=DoubleCommander
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=Git
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__JDK
    SET application_main_binary=%jdk__application_main_binary%
    SET application_name=%jdk__application_name%
    SET path_developer_application_specific=%path_developer_applications_jdk%
    SET url_application_archive=%url_jdk_archive%
    SET url_application_archive_includes_folder=%url_jdk_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_jdk_archive_included_folder_name%
    SET url_application_full=%url_jdk%
    SET version_application=%version_jdk%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    SET application_action_to_do=JDK
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__MySqlRouter
    SET application_main_binary=%mysql_router__application_main_binary%
    SET application_name=%mysql_router__application_name%
    SET path_developer_application_specific=%path_developer_applications_mysql_router%
    SET url_application_archive=%url_mysql_router_archive%
    SET url_application_archive_includes_folder=%url_mysql_router_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_mysql_router_archive_includes_folder_name%
    SET url_application_full=%url_mysql_router%
    SET version_application=%version_mysql_router%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    CALL :CreateWebApplicationsOperationalFolders
    IF NOT EXIST %path_web_applications_logs%\%path_developer_applications__rootS__mysql%\Router-%version_mysql_router%-64bit (
        ECHO Creating %mysql_router__application_name% logs folder
        MD %path_web_applications_logs%\%path_developer_applications__rootS__mysql%\Router-%version_mysql_router%-64bit
    )
    IF NOT EXIST %path_web_applications_temporary%\%path_developer_applications__rootS__mysql%\Router-%version_mysql_router%-64bit (
        ECHO Creating %mysql_router__application_name% temporary folder
        MD %path_web_applications_temporary%\%path_developer_applications__rootS__mysql%\Router-%version_mysql_router%-64bit
    )
    SET application_action_to_do=MySqlRouter
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__MySqlServerCommunity
    SET application_main_binary=%mysql_server_community__application_main_binary%
    SET application_name=%mysql_server_community__application_name%
    SET path_developer_application_specific=%path_developer_applications_mysql_server_community%
    SET url_application_archive=%url_mysql_server_community_archive%
    SET url_application_archive_includes_folder=%url_mysql_server_community_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_mysql_server_community_archive_includes_folder_name%
    SET url_application_full=%url_mysql_server_community%
    SET version_application=%version_mysql_server_community%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    CALL :CreateWebApplicationsOperationalFolders
    IF NOT EXIST %path_web_applications_logs%\%path_developer_applications__rootS__mysql%\Server-%version_mysql_server_community%-64bit (
        ECHO Creating %mysql_server_community__application_name% logs folder
        MD %path_web_applications_logs%\%path_developer_applications__rootS__mysql%\Server-%version_mysql_server_community%-64bit
    )
    IF NOT EXIST %path_web_applications_temporary%\%path_developer_applications__rootS__mysql%\Server-%version_mysql_server_community%-64bit (
        ECHO Creating %mysql_server_community__application_name% temporary folder
        MD %path_web_applications_temporary%\%path_developer_applications__rootS__mysql%\Server-%version_mysql_server_community%-64bit
    )
    SET application_action_to_do=MySqlServerCommunity
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__NodeJS_Current
    SET application_main_binary=%nodejs__application_main_binary%
    SET application_name=%nodejs_current__application_name%
    SET path_developer_application_specific=%path_developer_applications_nodejs_current%
    SET url_application_archive=%url_nodejs_current_archive%
    SET url_application_archive_includes_folder=%url_nodejs_current_archive_includes_folder%
    SET url_application_archive_included_folder_name=%url_nodejs_current_archive_includes_folder_name%
    SET url_application_full=%url_nodejs_current%
    SET version_application=%version_nodejs_current%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    SET application_action_to_do=NodeJS_Current
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=NotepadPlusPlus
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=PeaZip
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO END

:InitiateOrUpdateFrameworkInfrastructure__Php74x
    SET application_main_binary=%php__application_main_binary%
    SET application_name=%php__application_name%
    SET path_developer_application_specific=%path_developer_applications_php74x%
    SET url_application_archive=%url_php_archive_74x%
    SET url_application_archive_includes_folder=%url_php_archive_74x_includes_folder%
    SET url_application_full=%url_php74x%
    SET version_application=%version_php74x%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    CALL :CreateWebApplicationsOperationalFolders
    IF NOT EXIST %path_web_applications_temporary%\%path_developer_applications__rootS__php%\%version_php74x%-64bit (
        ECHO Creating %php__application_name% temporary folder
        MD %path_web_applications_temporary%\%path_developer_applications__rootS__php%\%version_php74x%-64bit
    )
    SET application_action_to_do=PHP74x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Php80x
    SET application_main_binary=%php__application_main_binary%
    SET application_name=%php__application_name%
    SET path_developer_application_specific=%path_developer_applications_php80x%
    SET url_application_archive=%url_php_archive_80x%
    SET url_application_archive_includes_folder=%url_php_archive_80x_includes_folder%
    SET url_application_full=%url_php80x%
    SET version_application=%version_php80x%
    CALL :InitiateOrUpdateFrameworkInfrastructure__GenericWithSpecificVariablesDefined
    CALL :CreateWebApplicationsOperationalFolders
    IF NOT EXIST %path_web_applications_temporary%\%path_developer_applications__rootS__php%\%version_php80x%-64bit (
        ECHO Creating %php__application_name% temporary folder
        MD %path_web_applications_temporary%\%path_developer_applications__rootS__php%\%version_php80x%-64bit
    )
    SET application_action_to_do=PHP80x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
        SET generic_application_folder=%path_developer_applications__root__putty%
        REM as name is fixed, removal of old versions is not neccsesary
        SET url_application_archive=putty9999.zip
        CALL :RemoveFolderWithOlderVersions
    )
    CALL :RemoveDownloadsFolderWithAnyContent
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python36x
    SET path_developer_applications_python=%path_developer_applications_python36x%
    SET version_python_major_minor_build=%version_python36x_major_minor_build%
    SET url_python=%url_python36x%
    SET python_compiled_modules_archive=python36.zip
    SET application_action_to_do=Python36x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python37x
    SET path_developer_applications_python=%path_developer_applications_python37x%
    SET version_python_major_minor_build=%version_python37x_major_minor_build%
    SET url_python=%url_python37x%
    SET python_compiled_modules_archive=python37.zip
    SET application_action_to_do=Python37x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python38x
    SET path_developer_applications_python=%path_developer_applications_python38x%
    SET version_python_major_minor_build=%version_python38x_major_minor_build%
    SET url_python=%url_python38x%
    SET python_compiled_modules_archive=python38.zip
    SET application_action_to_do=Python38x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
    CALL :InitiateOrUpdateFrameworkInfrastructure__Python
GOTO Menu__InstallationsToDo

:InitiateOrUpdateFrameworkInfrastructure__Python39x
    SET path_developer_applications_python=%path_developer_applications_python39x%
    SET version_python_major_minor_build=%version_python39x_major_minor_build%
    SET url_python=%url_python39x%
    SET python_compiled_modules_archive=python39.zip
    SET application_action_to_do=Python39x
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=TreeSize
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=WinSCP
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    SET application_action_to_do=WinSCP
    SET action_to_do=remove_old_versions
    CALL :MultipleActionsToDo
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
    CALL :DetectExistingVersions
    ECHO ===========================================================================================================
    ECHO Installation to perform, released on %this_script_version% released on date %this_script_release_date% (year-month-day)
    ECHO ===========================================================================================================
    ECHO From below list choose desired installation:                                 Version(s)
    ECHO -----------------------------------------------------------------------------------------------------------
    ECHO iah....Apache HTTPd for Windows........Web server HTML.......................%version_apache_httpd%......%detected_version_apache_httpd%....%detected_version_apache_httpd_newer%
    ECHO iame...Mod Evasive for Apache HTTPd....Web DDoS protector....................%version_apache_mod_evasive%.......%detected_version_apache_mod_evasive%.....%detected_version_apache_mod_evasive_newer%
    ECHO iamf...Mod FCGId for Apache HTTPd......Web FastCGI module....................%version_apache_mod_fcgid%......%detected_version_apache_mod_fcgid%....%detected_version_apache_mod_fcgid_newer%
    ECHO iamlr..Mod Log Rotate for Apache HTTPd.Web Log Rotate module.................%version_apache_mod_log_rotate%.......%detected_version_apache_mod_log_rotate%.....%detected_version_apache_mod_log_rotate_newer%
    ECHO iams...Mod Security for Apache HTTPd...Web Security module...................%version_apache_mod_security%.......%detected_version_apache_mod_security%.....%detected_version_apache_mod_security_newer%
    ECHO iat09..Apache Tomcat  9.x for Windows..Web server Java.......................%version_apache_tomcat9x%......%detected_version_apache_tomcat9x%....%detected_version_apache_tomcat9x_newer%
    ECHO iat10..Apache Tomcat 10.x for Windows..Web server Java.......................%version_apache_tomcat10x%......%detected_version_apache_tomcat10x%....%detected_version_apache_tomcat10x_newer%
    ECHO id.....Double Commander for Windows....File manager..........................%version_double_commander%....%detected_version_double_commander%..%detected_version_double_commander_newer%
    ECHO ig.....Git for Windows.................Versioning engine.....................%version_git_enhanced%....%detected_version_git%..%detected_version_git_newer%
    ECHO ij.....Java Development Kit for Win....Multi-platform engine.................%version_jdk%......%detected_version_jdk%....%detected_version_jdk_newer%
    ECHO imr....MySQL Router....................Database Proxy Server.................%version_mysql_router%......%detected_version_mysql_router%....%detected_version_mysql_router_newer%
    ECHO imsc...MySQL Server Community..........Database Server.......................%version_mysql_server_community%......%detected_version_mysql_server_community%....%detected_version_mysql_server_community_newer%
    ECHO in.....Notepad++.......................Advanced text editor..................%version_notepad_plus_plus%.......%detected_version_notepad_plus_plus%.....%detected_version_notepad_plus_plus_newer%
    ECHO injc...NodeJS Current..................Script engine Current.................%version_nodejs_current%......%detected_version_nodejs_current%.....%detected_version_nodejs_current_newer%
    ECHO iz.....PeaZip for Windows..............Archiver..............................%version_peazip%.......%detected_version_peazip%.....%detected_version_peazip_newer%
    ECHO ih74...PHP 7.4.x for Windows...........Script engine.........................%version_php74x%......%detected_version_php74x%....%detected_version_php74x_newer%
    ECHO ih80...PHP 8.0.x for Windows...........Script engine.........................%version_php80x%.......%detected_version_php80x%.....%detected_version_php80x_newer%
    ECHO iy.....PuTTY for Windows...............Remote shell..........................%version_putty%........%detected_version_putty%......%detected_version_putty_newer%
    ECHO ip36...Python 3.6.x for Windows........Script engine legacy..................%version_python36x_major_minor_build%.......%detected_version_python36x%.....%detected_version_python36x_newer%
    ECHO ip37...Python 3.7.x for Windows........Script engine legacy..................%version_python37x_major_minor_build%.......%detected_version_python37x%.....%detected_version_python37x_newer%
    ECHO ip38...Python 3.8.x for Windows........Script engine legacy..................%version_python38x_major_minor_build%.......%detected_version_python38x%.....%detected_version_python38x_newer%
    ECHO ip39...Python 3.9.x for Windows........Script engine latest GA...............%version_python39x_major_minor_build%.......%detected_version_python39x%.....%detected_version_python39x_newer%
    ECHO it.....TreeSize Free for Windows.......Files/folders/drives analysis.........%version_treesize%.......%detected_version_treesize%.....%detected_version_treesize_newer%
    ECHO iv.....VLC.............................Multimedia files player...............%version_vlc%......%detected_version_vlc%....%detected_version_vlc_newer%
    ECHO iw.....WinSCP..........................Multiple prot. file handler...........%version_winscp%.....%detected_version_winscp%...%detected_version_winscp_newer%
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
    IF /I "%CHOICE_INSTALL%"=="iah" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheHTTPd ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iame" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModEvasive ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iamf" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModFcgid ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iamlr" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModLogRotate ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iams" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheModSecurity ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iat09" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheTomcat9x ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="iat10" ( CALL :InitiateOrUpdateFrameworkInfrastructure__ApacheTomcat10x ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="id" ( CALL :InitiateOrUpdateFrameworkInfrastructure__DoubleCommander ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="ig" ( CALL :InitiateOrUpdateFrameworkInfrastructure__Git ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="ij" ( CALL :InitiateOrUpdateFrameworkInfrastructure__JDK ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="imr" ( CALL :InitiateOrUpdateFrameworkInfrastructure__MySqlRouter ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="imsc" ( CALL :InitiateOrUpdateFrameworkInfrastructure__MySqlServerCommunity ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="in" ( CALL :InitiateOrUpdateFrameworkInfrastructure__NotepadPlusPlus ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="injc" ( CALL :InitiateOrUpdateFrameworkInfrastructure__NodeJS_Current ) ELSE (
    IF /I "%CHOICE_INSTALL%"=="injl" ( CALL :InitiateOrUpdateFrameworkInfrastructure__NodeJS_LongTimeSupport ) ELSE (
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
