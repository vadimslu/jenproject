From debian:jessie

MAINTAINER Vadim Sluzky

COPY /csr /var/www

RUN apt-get update && \
    apt-get install -y \
      locales \
      apache2 \
      php5 \
      php5-cli \
      libapache2-mod-php5 \
      php5-gd \
      php5-json \
      php5-ldap \
      php5-mysql \
      mysql-client 


EXPOSE 80
CMD ["/usr/local/bin/run"]
