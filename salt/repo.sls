{% from "salt/map.jinja" import salt with context %}
salt_repo:
  file.managed:
    - name: /etc/yum.repos.d/saltstack.repo
    - contents: |
        {{ salt.repo|indent(8) }}
