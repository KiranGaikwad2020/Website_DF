FROM  ubi8/ubi:8.3
USER root
RUN yum install httpd -y  
ADD website.zip /var/www/html
RUN yum install unzip -y 
RUN unzip /var/www/html/website.zip -d /var/www/html/
CMD ["httpd","-D","FOREGROUND"]
