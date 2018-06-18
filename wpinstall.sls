{% from "wordpress/map.jinja" import wordpress with context %}

{% for site, arg in salt['pillar.get']('wordpress:websites', {}).iteritems() %}

{{ site }}_install_wordpress:
  cmd.run:
    - name: 'wp core install --url="{{ arg.url }}" --title="{{ arg.name }}" --admin_user="{{ arg.adminuser }}" --admin_password="{{ arg.adminpass }}" --admin_email="{{ arg.adminemail }}" --path="{{ wordpress.docroot }}/{{ arg.rootdir }}"'
    - user: {{ wordpress.user }}
    - unless: wp core is-installed --path={{ wordpress.docroot }}

{% endfor %}
