ARG VERSION=8.0.0-fpm-1.18.0-nginx-buster
FROM dwchiang/nginx-php-fpm:${VERSION}

LABEL maintainer="Ernest Chiang <me@ernestchiang.com>"

ARG VERSION_PHP_FPM_MINOR
ARG VERSION_OS
ENV VERSION_OS=${VERSION_OS}

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN set -x && \
    # install lib packages
    apt-get update &&\
    apt-get install --no-install-recommends --no-install-suggests -y \
        openssh-server \
        nodejs \
        default-mysql-client \
        npm \
        bc \
        libzip-dev \
        unzip \
        # for bz2
        #   - ref: https://github.com/docker-library/php/issues/47
        libbz2-dev \
        # for gd
        #   - ref: https://stackoverflow.com/questions/61228386/installing-gd-extension-in-docker
        libfreetype6-dev \
        libpng-dev \
        libjpeg62-turbo-dev \
        && \

    apt-get install --no-install-recommends --no-install-suggests -y \
        # for composer
        git \
        && \
    # docker-php
    #   - Removed `mbstring` on alpine: https://stackoverflow.com/questions/59251008/docker-laravel-configure-error-package-requirements-oniguruma-were-not-m/59253249#59253249
    #     Due to this error: `configure: error: Package requirements (oniguruma) were not met: Package 'oniguruma', required by 'virtual:world', not found`
    # for gd
    #   - ref: https://github.com/docker-library/php/pull/910#issuecomment-559383597
    if [ $(echo "${VERSION_PHP_FPM_MINOR} >= 7.4" | bc) -eq 1 ]; then \
        docker-php-ext-configure gd --with-freetype --with-jpeg ; \
    else \
        docker-php-ext-configure gd --with-freetype --with-jpeg ; \
    fi && \
    docker-php-ext-install -j$(nproc) \
        bcmath \
        mysqli \
        pdo \
        pdo_mysql \
        bz2 \
        gd \
        exif \
        opcache \
        zip \
        && \
    docker-php-source delete && \
    # php configurations
    mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" && \
    # Memory, Time, Size Limits
    #   You can limit these at your orchestration layer.
    echo "memory_limit=4096M" > $PHP_INI_DIR/conf.d/memory-limit.ini && \
    echo "max_execution_time=9000" >> $PHP_INI_DIR/conf.d/memory-limit.ini && \
    echo "post_max_size=500M" >> $PHP_INI_DIR/conf.d/memory-limit.ini && \
    echo "upload_max_filesize=200M" >> $PHP_INI_DIR/conf.d/memory-limit.ini && \
    # composer
    curl -sS https://getcomposer.org/installer | php -- --quiet --install-dir=/usr/local/bin --filename=composer && \
    # clean up
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/nginx/html/*

WORKDIR /var/www