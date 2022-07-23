FROM centos:latest
MAINTAINER ashishindcloud.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/john-doe.zip  /var/wwww/html/
WORKDIR  /var/www/html/
RUN unzip john-doe.zip
RUN cp -rvf john-doe/* .
RUN rm -rf john-doe john-doe.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
