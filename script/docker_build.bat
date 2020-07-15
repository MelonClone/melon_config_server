@echo off
pushd "%~dp0"

cd ../
call ./gradlew.bat build
cd ./docker
docker build -t melon-config-server:latest .
docker container stop config-server
docker container rm config-server
docker run -d --ip 172.19.0.2 -p 8888:8888 --name config-server melon-config-server:latest
cd ../

:exit
popd
@echo on