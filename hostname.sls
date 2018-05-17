set_hostname:
  network.system:
    - enabled: True
    - hostname: salt
    - apply_hostname: True
    - retain_settings: True
