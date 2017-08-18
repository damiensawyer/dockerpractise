FROM microsoft/mssql-server-linux

EXPOSE 1433
RUN mkdir /backups
COPY database.bak /backups
WORKDIR /backups
CMD node app.js
