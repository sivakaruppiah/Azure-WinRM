Set-ExecutionPolicy Bypass -Scope Process -Force; netsh advfirewall firewall add rule name="Sql" dir=in action=allow protocol=TCP localport=1433
Invoke-Sqlcmd -Query " USE [master];CREATE LOGIN [adminuser] WITH PASSWORD=N'adminuser', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;ALTER SERVER ROLE [sysadmin] ADD MEMBER [adminuser]; "
Invoke-Sqlcmd -Query " USE [master];EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2; "
Restart-Service -Force MSSQLSERVER
