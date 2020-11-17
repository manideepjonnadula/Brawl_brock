set ldir=%cd%
echo "Deploy project ..... ....."
echo %ldir%
call mvn clean
echo "Deploy project ..... ....."
call mvn install
cd assembly
call mvn dependency:copy
call mvn antrun:run
cd %ldir%

echo "Deploy over"

echo "Start OSGI Framework ..... ....."
cd target

call run.bat
cd %ldir%
