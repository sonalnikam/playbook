C:\Windows\System32\inetsrv\appcmd set config /section:anonymousAuthentication /enabled:false
C:\Windows\System32\inetsrv\appcmd set config /section:BasicAuthentication /enabled:false
C:\Windows\System32\inetsrv\appcmd set config /section:WindowsAuthentication /enabled:true
iisreset
C:\Users\Administrator\Downloads\PlateSpinMigrateSetup\PlateSpinImage\ServerInstall\setup.exe /s /v/qn /v"/l*v c:\install_windowsAuth_5.log" ^
/v"DBINSTALLTYPE=customerinstall" ^
/v"IS_SQLSERVER_SERVER=WIN04\WIN04" ^
/v"IS_SQLSERVER_AUTHENTICATION=0" ^
/v"IS_SQLSERVER_USERNAME=WIN04\Administrator" ^
/v"IS_SQLSERVER_USER_USERNAME=WIN04\Administrator" ^
/v"IS_SQLSERVER_PASSWORD=Atos@123"

msiexec.exe /i  "C:\PlateSpin Migrate Client.msi" /quiet