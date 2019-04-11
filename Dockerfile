FROM debian:buster

ENV PATH="/root/.composer/vendor/bin:${PATH}"

RUN apt-get update && \
    apt-get install --yes \
        arcanist \
        git \
        tini \
        composer && \
    composer global require \
      squizlabs/php_codesniffer

ENTRYPOINT /usr/bin/tini

CMD arc lint
