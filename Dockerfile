FROM drupal:latest

WORKDIR /opt/drupal/web

COPY composer.* /opt/drupal/web/
RUN composer install --no-interaction

RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN echo 'output_buffering = On' >> /usr/local/etc/php/conf.d/buffer.ini

COPY ./web/ /opt/drupal/web/

# disable/enable this on initial installation
RUN chmod -R 777 /opt/drupal/web/sites/default
# keep this enabled
RUN chmod -R 777 /opt/drupal/web/sites/default/files

EXPOSE 80

CMD ["apache2-foreground"]
