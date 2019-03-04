; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OpenIMU"
#define MyAppVersion "0.5.0"
#define MyAppPublisher "IntroLab - Centre de Recherche sur le Vieillissement de Sherbrooke - Université de Sherbrooke"
#define MyAppURL "https://introlab.3it.usherbrooke.ca"
#define MyAppExeName "OpenIMUApp.exe"

#define MyAppVersionString StringChange(MyAppVersion, ".", "_")

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{09CAE440-5766-4518-8D40-DFF3B434591A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf64}\OpenIMU
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=Setup_OpenIMU_{#MyAppVersionString}
SetupIconFile=..\python\resources\icons\OpenIMU.ico
Compression=lzma2/Ultra
SolidCompression=true
InternalCompressLevel=Ultra

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; Application files
Source: "..\python\dist\OpenIMUApp\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; Alembic files
Source: "..\python\alembic.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\python\alembic\*"; DestDir: "{app}\alembic"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{commonprograms}\OpenIMU\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
