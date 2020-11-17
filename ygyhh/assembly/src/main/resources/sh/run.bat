set CURRENT_DIR=%cd%
set GW_HOME=%CURRENT_DIR%\osgi
set GW_CLASSPATH=".;%GW_HOME%\org.eclipse.osgi-@org.eclipse.osgi.version@.jar;%GW_HOME%\tqlab-sense-hook-@com.tqlab.sense.version@.jar"
set GW_MAINCLASS="org.eclipse.core.runtime.adaptor.EclipseStarter"
set LOGGING_CONFIG="%CURRENT_DIR%\config\logging.properties"

rem 
rem java -Djava.util.logging.config.file=%LOGGING_CONFIG% -classpath %GW_CLASSPATH% %GW_MAINCLASS% -console 5555

java -Xdebug -Xrunjdwp:transport=dt_socket,suspend=n,server=y,address=8000 -Djava.util.logging.config.file=%LOGGING_CONFIG% -classpath %GW_CLASSPATH% %GW_MAINCLASS% -console 5555
