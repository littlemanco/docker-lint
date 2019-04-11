FROM debian:buster

ENV PATH="/root/.composer/vendor/bin:${PATH}"

RUN apt-get update && \
    apt-get install --yes \
        arcanist \
        git \
        composer && \
    composer global require \
      squizlabs/php_codesniffer

CMD arc lint
