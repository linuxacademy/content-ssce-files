{% from "wordpress/map.jinja" import wordpress with context %}

include:
  - wordpress.wpcli

docroot_permissions:
  file.directory:
    - name: {{ wordpress.docroot }}
    - user: {{ wordpress.user }}
    - group: {{wordpress.group }}
    - mode: 755

download_wordpress:
  cmd.run:
    - name: 'wp core download --path="{{ wordpress.docroot }}"'
    - user: {{ wordpress.user }}
    - unless: test -f {{ wordpress.docroot }}/wp-config.php
