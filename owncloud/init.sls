{% from "owncloud/map.jinja" import owncloud with context %}

include:
    - owncloud.repo
    
owncloud-install:
    pkg.installed:
        - name: 'owncloud-server'
        - refresh: True
