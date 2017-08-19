FROM microsoft/mssql-server-linux

EXPOSE 1433
RUN mkdir /datarestore
COPY backupdata/small.bak /datarestore
CMD /opt/mssql-tools/bin/sqlcmd -H localhost -U SA -P 'qwe123QWE!@#' -Q "RESTORE DATABASE mydb FROM  DISK = N'/datarestore/small.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5"