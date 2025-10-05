FROM php:7.3-apache
RUN apt-get update && apt-get install -y --no-install-recommends unzip libzip-dev && docker-php-ext-install zip && rm -rf /var/lib/apt/lists/*
# Copy the SQLi repo into the webroot. Ensure you have repos/sqlinjection-training-app present in the build context.
COPY repos/sqlinjection-training-app/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html && find /var/www/html -type f -name "*.sh" -exec chmod +x {} \;
EXPOSE 80
CMD ["apache2-foreground"]
