{% from "salt/map.jinja" import salt with context %}
include:
  - salt.repo
  - salt.deps

salt_api_package:
  pkg.installed:
    - name: salt-api
    - version: {{ salt.version }}
    - fromrepo: saltstack-amzn-repo

salt_api_service:
  service.running:
    - name: salt-api
    - enable: true
