# Salt Formula

Salt formula to manage the installation and configuration of Salt.

## Usage

Install just the minion:

````yaml
include:
  - salt
````
Install the master and api:

````yaml
include:
  - salt.master
  - salt.api
````

Configuration is done using pillar settings:

````yaml
salt:
  version: 2015.8.8
  minion:
    config:
      master: localhost
  master:
    config:
      auto_accept: true
      open_mode: true
      fileserver_backend:
        - git
      gitfs_remotes:
        - https://github.com/mulesoft/formula-salt
````
