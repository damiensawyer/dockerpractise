FROM microsoft/mssql-server-linux

# You can have these on separate lines, but, if you do so, then there are more images added to the cache on instansiation.
ENV ACCEPT_EULA=Y SA_PASSWORD=qwe123QWE!@#

EXPOSE 1433
RUN mkdir /datarestore
COPY backupdata/small.bak /datarestore
COPY backupdata/restoredata.sh /datarestore
RUN chmod +x /datarestore/restoredata.sh

RUN mkdir /hostsplat
RUN echo "hello world" > /hostsplat/greeting
VOLUME /hostsplat

# run with    docker run -d -p 1434:1433 smallsql
# AFter SQL is up, restore data with the following (changing c5 for the container id)
# docker exec -it c5 /opt/mssql-tools/bin/sqlcmd -H localhost -U SA -P 'qwe123QWE!@#' -Q "RESTORE DATABASE mydb FROM DISK = N'/datarestore/small.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5"
# I'm not sure why, but this didn't work        docker exec -it c5 /datarestore/restoredata.sh


# I was trying to get the backup to restore after a container was created. It didn't work because SQL 
# wasn't up yet. There's an MS example here showing how to do it https://github.com/twright-msft/mssql-node-docker-demo-app
# Note that they have a bash script that runs the SQL commands that have a sleep 90s command in it to delay
#ENTRYPOINT /opt/mssql-tools/bin/sqlcmd -H localhost -U SA -P 'qwe123QWE!@#' -Q "RESTORE DATABASE mydb FROM DISK = N'/datarestore/small.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5"