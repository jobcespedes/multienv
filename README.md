Role Name: multienv
=========

* Master branch: [![Build Status](https://travis-ci.org/jobcespedes/ansible-role-multienv.svg?branch=master)](https://travis-ci.org/jobcespedes/ansible-role-multienv)

Description: A stackable multienvironment directory layout for Ansible using unionfs and docker

Requirements
------------

- Docker
- Docker SDK for Python

- See [`requirements.txt`](requirements.txt)

Role Variables
--------------

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
