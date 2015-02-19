echo off
set BASEPORT=10000
set JAVAPATH="C:\Program Files (x86)\Java\jre7\bin\java"
echo Using java from %JAVAPATH%
@echo OFF
set /p PARTITION= "Enter your email address (the same used to log on the vortex demo): "

set /a LOCAL_PORT=%RANDOM%+%BASEPORT%
set LINODE=demo-us.prismtech.com

set ADDR=%LINODE%
set PUBLIC_DISCOVERY_PORT=7400
set DISCOVERY_LOCATOR=%ADDR%:%PUBLIC_DISCOVERY_PORT%

 %JAVAPATH% -Dddsi.network.interfaces=eth3  -Dddsi.network.transport=tcp -Dddsi.discovery.tcp.peers=%DISCOVERY_LOCATOR% -Dddsi.discovery.externalNetworkAddresses=none -Ddds.partition=%PARTITION% -Dddsi.discovery.tcp.port=%LOCAL_PORT% -jar  .\ishapes-2.1.0-SNAPSHOT.jar
