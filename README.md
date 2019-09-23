Role Name: multienv
=========

[![Build Status](https://travis-ci.org/jobcespedes/ansible-role-multienv.svg?branch=master)](https://travis-ci.org/jobcespedes/ansible-role-multienv)[![Buy me a coffee](https://img.shields.io/badge/$-BuyMeACoffee-blue.svg)](https://www.buymeacoffee.com/jobcespedes)

Description: A stackable multienvironment directory layout for Ansible using unionfs and docker

Requirements
------------

- Docker
- Docker SDK for Python

- See [`requirements.txt`](requirements.txt)

Role Variables
--------------

Add environment stack hierarchy in ```multienv_union``` using a list. The last environment in the list has the most priority. Environments could be stack over many others, not just one. For example, to stack production over stage and dev:

```yaml
multienv_union:
  - dev
  - stage
  - production
```

To stack production over dev:
```yaml
multienv_union:
  - dev
  - production
```

For the rest of variables:

- See [`defaults/main.yml`](defaults/main.yml).

Dependencies
------------

- Depends on other Ansible roles: no

Example Playbook
----------------

```yaml
- hosts: all
  roles:
    - jobcespedes.multienv
```

License
-------

Apache 2.0

Author Information
------------------

Job Céspedes: jobcespedes@gmail.com
