{% from "salt/map.jinja" import salt with context %}
{% if grains.os_family == "RedHat" %}
salt_repo:
  file.managed:
    - name: /etc/yum.repos.d/saltstack.repo
    - contents: |
        [saltstack]
        name=SaltStack repo for Amazon Linux
        baseurl=https://repo.saltstack.com/yum/redhat/6/$basearch/archive/2016.3.1
        enabled=1
        gpgcheck=1
        gpgkey=https://repo.saltstack.com/yum/redhat/6/$basearch/archive/2016.3.1/SALTSTACK-GPG-KEY.pub
{% elif grains.os_family == "Debian" %}
salt_repo:
  file.managed:
    - name: /etc/apt/sources.list.d/saltstack.list
    - contents: deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/archive/2016.3.1 trusty main
{% endif %}
