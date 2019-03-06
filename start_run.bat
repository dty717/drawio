#@ECHO OFF
REM deploy.bat
cd C:\Users\xqy\Desktop\github\dty717\drawio\out\artifacts\IDE_war_exploded
SET CATALINA_HOME=C:\Users\xqy\Desktop\apache-tomcat-9.0.0.M22 - ¸±±¾
IF EXIST "%CATALINA_HOME%\webapps\ROOT" (
    rmdir "%CATALINA_HOME%\webapps\ROOT" /s /q
)
IF EXIST "%CATALINA_HOME%\webapps\ROOT.war" (
    del "%CATALINA_HOME%\webapps\ROOT.war" /q
)
copy /Y "IDE_war exploded.war" "%CATALINA_HOME%\webapps"

Ren "%CATALINA_HOME%\webapps\IDE_war exploded.war" "ROOT.war"
"%CATALINA_HOME%\bin\catalina.bat" run
