@echo off

@set JAVA_ARGS=-Xms50m -Xmx100m

@set MAVEN_CMD=mvn

call:run

:clean
    call %MAVEN_CMD% clean
@goto:eof

:package
    call %MAVEN_CMD% clean package -DskipTests
@goto:eof

:run
    call:package & java %JAVA_ARGS% -jar target/registration-center-1.jar
@goto:eof