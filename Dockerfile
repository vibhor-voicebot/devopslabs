FROM centos

RUN yum update -y
RUN yum install -y httpd

COPY index.html /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
