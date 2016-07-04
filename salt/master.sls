{% from "salt/map.jinja" import salt with context %}
include:
  - salt.repo
  - salt.deps

salt_master_package:
  pkg.installed:
    - name: salt-master

salt_master_config:
  file.managed:
    - name: /etc/salt/master
    - template: jinja
    - contents: |
        {{ salt.master.config|yaml(False)|indent(8) }}
    - listen_in:
      - service: salt_master_service

salt_master_service:
  service.running:
    - name: salt-master
    - enable: true
