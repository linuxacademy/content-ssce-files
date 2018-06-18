mysql:
  server:
    bind: 10.0.1.102
  root:
    password: temp
  databases:
    wordpress:
      host: 10.0.1.102
  users:
    wpuser:
      password: temppass
      host: 10.0.1.101
      database: wordpress.*
      grants: ALL PRIVILEGES
