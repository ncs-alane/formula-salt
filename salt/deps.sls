python-zmq:
  pkg.installed:
    - version: 14.5.0-2.el6
    - fromrepo: saltstack-amzn-repo
python-tornado:
  pkg.installed:
    - version: 4.2.1-1.el6
    - fromrepo: saltstack-amzn-repo
python-crypto:
  pkg.installed:
    - version: 2.6.1-2.el6
    - fromrepo: saltstack-amzn-repo
python-futures:
  pkg.installed:
    - version: 3.0.3-1.el6
    - fromrepo: saltstack-amzn-repo
# this version is newer that salt version
python26-jinja2:
  pkg.installed:
    - version: 2.7.2-2.15.amzn1
#python-jinja2:
#  pkg.installed:
#    - version: 2.2.1-2.el6
#    - fromrepo: saltstack-amzn-repo
python-markupsafe:
  pkg.installed:
    - version: 0.11-10.el6
    - fromrepo: saltstack-amzn-repo
python-msgpack:
  pkg.installed:
    - version: 0.4.6-1.el6
    - fromrepo: saltstack-amzn-repo
# python26-boto wants this one
python26-requests:
  pkg.installed:
    - version: 1.2.3-5.10.amzn1
#python-requests:
#  pkg.installed:
#    - version: 1.1.0-3.el6
#    - fromrepo: saltstack-amzn-repo
python-six:
  pkg.installed:
    - version: 1.9.0-2.el6
    - fromrepo: saltstack-amzn-repo

git:
  pkg.installed: []

python-pygit2:
  pkg.installed:
    - version: 0.20.3-4.el6
    - fromrepo: epel
python-gnupg:
  pkg.installed:
    - version: 0.3.7-1.el6
    - fromrepo: epel
