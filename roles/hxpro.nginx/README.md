hxpro.nginx
===========

[![Build Status](https://travis-ci.org/hxpro/ansible-role-nginx.svg?branch=master)](https://travis-ci.org/hxpro/ansible-role-nginx)

Nginx - this role is under development.

Requirements
------------

This role will define only default server configuration.
You can put your own configuration here `/etc/nginx/conf.d/`.
Add default content to here `/var/www/html/`


Role Variables
--------------

```
nginx_worker_connections: 1024
nginx_client_max_body_size: 1m
nginx_ipv6: False
nginx_server_tokens: "on" [ "off", "build" ]
nginx_modules:
  - /usr/share/nginx/modules/mod-http-geoip.conf
  - /usr/share/nginx/modules/mod-http-image-filter.conf
  - /usr/share/nginx/modules/mod-http-perl.conf
  - /usr/share/nginx/modules/mod-http-xslt-filter.conf
  - /usr/share/nginx/modules/mod-mail.conf
  - /usr/share/nginx/modules/mod-stream.conf
nginx_default_root: /var/www/html
```

Dependencies
------------

 - hxpro.epel


Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: hxpro.nginx }

License
-------

WTFPL

Author Information
------------------

Matěj Koudelka <matej@hxpro.cz>
