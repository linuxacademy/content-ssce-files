{% from "mysql/map.jinja" import mysql with context %}

mysql_server_install:
  pkg.installed:
    - name: {{ mysql.server }}
  service.running:
    - name: {{ mysql.service }}

include:
  - mysql.config
  - mysql.python
  - mysql.root
  - mysql.databases
  - mysql.users
  - mysql.restart
