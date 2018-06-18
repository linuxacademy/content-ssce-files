{% from "wordpress/map.jinja" import wordpress with context %}

create_wpconfig:
  cmd.run:
    - name: 'wp config create --dbhost=192.168.50.12 --dbname=wordpress --dbuser=wordpress --dbpass=encryptedpass --path={{ wordpress.docroot }}'
    - user: {{ wordpress.user }}
    - unless: test -f {{ wordpress.docroot }}/wp-config.php
