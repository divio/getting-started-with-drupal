FROM drupal:latest

COPY . /var/www/html
RUN chmod -R 777 /var/www/html/sites/default
