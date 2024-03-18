# Usamos la imagen base oficial de PHP con Apache
FROM php:7.4-apache

# Instalamos las dependencias necesarias para mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copiamos el código fuente de tu aplicación al directorio predeterminado de Apache en el contenedor
COPY ./src/ /var/www/html/

# Opcional: Si necesitas ajustar la configuración de PHP o Apache, puedes hacerlo aquí
# Por ejemplo, para aumentar el límite de memoria de PHP, descomenta la siguiente línea:
# RUN echo 'memory_limit = 512M' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;

# Opcional: Para ajustes personalizados de Apache, como habilitar mod_rewrite
# RUN a2enmod rewrite
