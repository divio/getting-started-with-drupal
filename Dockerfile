FROM drupal:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

COPY . /var/www/html

CMD ["apache2-foreground"]
