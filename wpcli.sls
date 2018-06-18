{% from "wordpress/map.jinja" import wordpress with context %}

install_wpcli:
  file.managed:
    - name: /usr/local/bin/wp
    - source: https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    - source_hash: https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar.sha512
    - user: {{ wordpress.user }}
    - group: {{ wordpress.group }}
    - mode: 740
