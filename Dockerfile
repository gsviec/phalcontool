# Pull base image
FROM phalconphp/php-apache:ubuntu-16.04

MAINTAINER Thien Tran <fcduythien@gmail.com>

RUN git clone --depth=1 git://github.com/phalcon/phalcon-devtools.git
RUN ln -s /phalcon-devtools/phalcon.php /usr/bin/phalcon && chmod ugo+x /usr/bin/phalcon

VOLUME [ "/app" ]
WORKDIR /app
ENTRYPOINT ["/usr/bin/phalcon"]
