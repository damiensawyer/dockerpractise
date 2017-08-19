docker run -d -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=qwe123QWE!@#' -p 1434:1433 -v c:/temp/code/docker/sqllinux/data/:/var/opt/mssql/data/ microsoft/mssql-server-linux
