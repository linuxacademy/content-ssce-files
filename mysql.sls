mysql:
  server:
    bind: 10.0.1.102
  root:
    name: root
    password: temp
  databases:
    wordpress:
      host: localhost
  users:
    wpuser:
      password: temppass
      host: localhost
      database: wordpress.*
      grants: ALL PRIVILEGES
