# PHP7 docker image

Here is an unofficial Dockerfile for [php7][php7].

You can find several versions of this image in [the dedicated docker hub page][dockerhubpage].   

## Usage

Get it:

    docker pull diegograssato/php7

Run it:

    docker run --name php7 diegograssato/php7


## Found modules available:
    apc
    apcu
    bcmath
    bz2
    calendar
    Core
    ctype
    curl
    date
    dom
    enchant
    exif
    fileinfo
    filter
    ftp
    gd
    geoip
    gettext
    gmp
    hash
    iconv
    igbinary
    imagick
    imap
    intl
    json
    ldap
    libxml
    mbstring
    mcrypt
    memcache
    memcached
    msgpack
    mysqli
    mysqlnd
    openssl
    pcntl
    pcre
    PDO
    pdo_dblib
    pdo_mysql
    pdo_pgsql
    pdo_sqlite
    pgsql
    Phar
    posix
    pspell
    readline
    recode
    redis
    Reflection
    session
    shmop
    SimpleXML
    sockets
    SPL
    sqlite3
    standard
    sysvmsg
    sysvsem
    sysvshm
    tokenizer
    wddx
    xdebug
    xhprof
    xml
    xmlreader
    xmlrpc
    xmlwriter
    xsl
    Zend OPcache
    zip
    zlib

## Variables available:
    PHP_FPM_ENABED: 'true' / 'false' => Enabling PHP FPM
    PHP_FPM_XDEBUG_PORT: 9000 => PHP Xdebug port
    PHP_FPM_XDEBUG_REMOTE_IP: 172.18.0.1 => PHP Xdebug IP
    PHP_FPM_XDEBUG_ENABLE: 'on' / 'off' => PHP Xdebug Enable
    PHP_FPM_XDEBUG_IDE_KEY: 'PHPSTORM' / 'netbeans' => PHP Xdebug IDE KEY
    PHP_FPM_XDEBUG_REMOTE_LOG_ENABLE: 'false' / 'on' => Enable or disable PHP Xdebug remote log in /tmp/xdebug.log
    PHP_FPM_ENABLE_MOD => Enable module in All environment
    PHP_FPM_ENABLE_CLI_MOD => Enable module in CLI environment
    PHP_FPM_DIS_MOD => Disable module in CLI environment
    PHP_FPM_CLI_DIS_MOD =>Disable module in ALL environment
    PHP_FPM_PRODUCTION => Disable development environment from PHP.ini settings
    PHP_FPM_POOL_FILE: '/php7-fpm/application.pool.conf' => Copy file to POOL configuration file
    PHP_FPM_POOL_FOLDER: '/php7-fpm/' => Copy all files to POOL folder
    PHP_FPM_CONFIG_FILE: '/php7-fpm/php-fpm.conf' => Copy php-fpm.conf to php-fpm configuration

## Personalize ports and hosts, an the docker-composer.yml

    php7:
        image: diegograssato/php7:7.1
        ports:
            - 9000:9000
        environment:
            PHP_FPM_ENABED: 'true'
            PHP_FPM_XDEBUG_PORT: 9000
            PHP_FPM_XDEBUG_REMOTE_IP: 172.18.0.1
            PHP_FPM_XDEBUG_ENABLE: 'on'
            PHP_FPM_XDEBUG_IDE_KEY: 'PHPSTORM'
            PHP_FPM_XDEBUG_REMOTE_LOG_ENABLE: 'false'
            PHP_FPM_ENABLE_MOD: 'xsl imagick json mcrypt'
            PHP_FPM_ENABLE_CLI_MOD: 'xdebug'
            PHP_FPM_DIS_MOD: 'mongodb'
            PHP_FPM_CLI_DIS_MOD: 'xdebug'
            PHP_FPM_PRODUCTION: 'false'
            PHP_FPM_POOL_FILE: '/php7-fpm/application.pool.conf'
            PHP_FPM_POOL_FOLDER: '/php7-fpm/'
            PHP_FPM_CONFIG_FILE: '/php7-fpm/php-fpm.conf'

## Build

Just clone this repo and run:

    docker build -t diegograssato/php7 .
    docker push diegograssato/php7


  [dockerhubpage]: https://hub.docker.com/r/diegograssato/php7/ "PHP7 docker hub page"
  [php7]:git@github.com:diegograssato/my_containers.git/php7 "PHP7 source code"
