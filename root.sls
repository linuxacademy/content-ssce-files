include:
  - mysql
  - mysql.python

{% if grains['os_family'] == 'RedHat' %}

mysql_root_password_set:
  cmd.run:
    - name: mysqladmin --host localhost --user {{ pillar['mysql']['root']['name'] }} password '{{ pillar['mysql']['root']['password'] }}'
    - unless: mysql --host localhost --user {{ pillar['mysql']['root']['name'] }} --password="{{ pillar['mysql']['root']['password'] }}" --execute="SELECT1;"

{% endif %}

root_user:
  mysql_user.present:
    - name: root
    - password: {{ pillar['mysql']['root']['password'] }}
    - host: localhost