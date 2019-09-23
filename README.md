Role Name: multienv
=========

[![Build Status](https://travis-ci.org/jobcespedes/multienv.svg?branch=master)](https://travis-ci.org/jobcespedes/multienv)[![Buy me a coffee](https://img.shields.io/badge/$-BuyMeACoffee-blue.svg)](https://www.buymeacoffee.com/jobcespedes)

Description: A stackable multienvironment directory layout for Ansible using unionfs and docker. Check this [Github project](https://github.com/jobcespedes/demo-multienv) with demo data for the environments

Requirements
------------

- Docker
- Docker SDK for Python

- See [`requirements.txt`](requirements.txt)

Role Variables
--------------

Define a stackable environment hierarchy in ```multienv_union``` variable using a list. The last environment in the list has the most priority. More than two directories can be stacked. For example, to stack production over stage and dev:

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
- Centos: if using Centos and getting a message like **'is mounted on / but it is not a shared mount'**, you may need to make ```multienv_host_mountpoint``` a shared mount point with ```mount --make-rshared <multienv_host_mountpoint>```. Replace ```<multienv_host_mountpoint>``` with the respective value
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
