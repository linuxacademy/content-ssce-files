wordpress:
    cli:
        source: https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
        hash:  https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar.sha512
    sites:
        idunnasoft.com:
            username: admin
            password: temppass
            database: wordpress
            dbhost: localhost
            dbuser: wpuser
            dbpass: temppass
            url: http://idunnasoft.com
            title: 'IdunnoSoft'
            email: marketing@idunnasoft.com
    lookup:
        docroot: /var/html 
