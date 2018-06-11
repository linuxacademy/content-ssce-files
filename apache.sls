apache:
  vhosts:
    eski.conf:
      servername: eskipm.com
      serveralias: www.eskipm.com
      errorlog: logs/eskipm.com-error_log
      customlog: logs/eskipm.com-access_log combined
      docroot: /var/www/html/eskipm.com
    internal.conf:
      servername: internal.idunnasoft.com
      serveralias: www.internal.idunnasoft.com
      errorlog: logs/internal_web-error_log
      customlog: logs/internal_web-access_log combines
      docroot: /var/www/html/internal
