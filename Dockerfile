FROM nimmis/alpine-apache-php5
RUN apk update
RUN apk add wget unzip
RUN wget https://suitecrm.com/files/160/SuiteCRM-7.10.4/276/SuiteCRM-7.10.4.zip -O /tmp/SuiteCRM-7.10.4.zip
WORKDIR /tmp
RUN unzip /tmp/SuiteCRM-7.10.4.zip 
RUN rm -v /var/www/html/index.html; mv -v /tmp/SuiteCRM-7.10-4/* /var/www/html
