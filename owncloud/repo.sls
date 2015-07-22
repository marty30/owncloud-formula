{% from "owncloud/map.jinja" import owncloud with context %}

owncloud-repo:
  pkgrepo.managed:
    {% if grains['os_family'] == 'RedHat' %}
    - name: 'owncloud'
    - humanname: 'Owncloud RPM repository'
    - baseurl: {{ owncloud.repo_url }}
    {% elif grains['os_family'] == 'Debian' %}
    - name: {{ owncloud.repo_url }}
    - file: /etc/apt/sources.list.d/owncloud.list
    {% endif %}
    - key_url: {{ owncloud.key_url }}
    - gpgcheck: 1
    - enabled: 1
