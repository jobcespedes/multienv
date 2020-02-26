Role Name: multienv
=========

[![Build Status](https://travis-ci.org/jobcespedes/multienv.svg?branch=master)](https://travis-ci.org/jobcespedes/multienv) [![Buy me a coffee](https://img.shields.io/badge/$-BuyMeACoffee-blue.svg)](https://www.buymeacoffee.com/jobcespedes)

Description: A stackable multienvironment directory layout for Ansible using unionfs. Check this [Github project](https://github.com/jobcespedes/demo-multienv) with demo data for the environments

There are three methods to run unionfs binary. From unionfs binary in the host, a docker container or a podman container.

Requirements
------------
Using `unionfs` host binary
- unionfs-fuse

Using docker engine
- Docker
- Docker SDK for Python

Using podman engine
- Podman

- See [`requirements.txt`](requirements.txt)

Role Variables
--------------

Define a stackable environment hierarchy in ```multienv_union``` variable using a list. The last environment in the list has the most priority. For example **dev**:
```yaml
multienv_union:
  - base
  - dev
```
For example **dev**:
```yaml
multienv_union:
  - base
  - production
```
More than two directories can be stacked. For example, to stack **stage** over dev and base:

```yaml
multienv_union:
  - base
  - dev
  - stage
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
Run it with docker:
```bash
ansible-playbook -i localhost, multienv.yml
```

Run it with podman:
```bash
# podman method requires sudo
ansible-playbook -i localhost, multienv.yml -e multienv_method=podman -K
```

Run it with binary in host:
```bash

ansible-playbook -i localhost, multienv.yml -e multienv_method=binary
```

Unmount it
```bash
ansible-playbook -i localhost, multienv.yml -e multienv_stop=true
```
License
-------

Apache 2.0

Author Information
------------------

Job Céspedes: jobcespedes@gmail.com
