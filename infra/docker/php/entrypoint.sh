#!/bin/bash

composer install
compose update
composer dumpautoload
php artisan cache:clear
php artisan config:cache
php artisan storage:link
chown -R phper storage/ bootstrap/cache
chmod -R 755 storage/ bootstrap/cache
php artisan migrate

php-fpm
