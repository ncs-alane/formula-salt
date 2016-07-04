{% from "salt/map.jinja" import salt with context %}
include:
  - salt.repo
  - salt.deps

salt_minion_package:
  pkg.installed:
    - name: salt-minion

salt_minion_config:
  file.managed:
    - name: /etc/salt/minion
    - template: jinja
    - contents: |
        {{ salt.minion.config|yaml(False)|indent(8) }}
    - listen_in:
      - service: salt_minion_service

salt_minion_service:
  service.running:
    - name: salt-minion
    - enable: true
