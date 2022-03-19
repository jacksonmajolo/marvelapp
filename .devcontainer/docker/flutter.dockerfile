FROM cirrusci/flutter:stable

WORKDIR /var/www/marvelapp

COPY ./scripts/entrypoint.sh /usr/local/bin/entrypoint