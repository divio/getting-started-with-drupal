#!/bin/bash

# Path to settings.php
SETTINGS="/var/www/html/sites/default/settings.php"

# Check if settings.php exists
if [ ! -f "$SETTINGS" ]; then
  # Ensure the default settings.php exists as a source to copy from
  cp /var/www/html/sites/default/default.settings.php "$SETTINGS"

  # Use PHP to parse DATABASE_URL and write configurations to settings.php
  php -r "
  \$url = parse_url(getenv('DATABASE_URL'));
  \$settings = \"\$databases['default']['default'] = [
    'database' => ltrim(\$url['path'],'/'),
    'username' => \$url['user'],
    'password' => \$url['pass'],
    'host' => \$url['host'],
    'port' => \$url['port'],
    'namespace' => 'Drupal\\\\Core\\\\Database\\\\Driver\\\\mysql',
    'driver' => 'mysql',
  ];\";
  file_put_contents('$SETTINGS', \$settings, FILE_APPEND);
"
fi

# Continue with the container's CMD
exec "$@"
