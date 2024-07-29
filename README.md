# Ansible
[![GitHub commits](https://badgen.net/github/commits/Veltys/Ansible)](https://GitHub.com/Veltys/Ansible/commit/)
[![GitHub latest commit](https://badgen.net/github/last-commit/Veltys/Ansible)](https://GitHub.com/Veltys/Ansible/commit/)
[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/Veltys/Ansible/blob/master/LICENSE.md)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/891edd40bfb14decb9efedbf5ee5f6a9)](https://app.codacy.com/gh/Veltys/Ansible/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

Ansible master repository with different useful roles


## Description
Ansible master repository that contains a collection of different useful roles that can be leveraged in the automation of various tasks


## Changelog
### To-do (*TODO*)
- [ ] Create a to-do list

### [0.3.54] - 2024-07-29
#### Added
- **Ozono** host

### [0.3.53] - 2024-07-16
#### Fixed
- Wrong security in some sites in **Saturnus** host

### [0.3.52] - 2024-07-11
#### Added
- Support for domains with 'www'
- More required packages in **Satunus** host

#### Fixed
- More consistent formatting in **README.md**
- Error in Apache virtual sites template
- Wrong tags in *certbot* tasks

### [0.3.51] - 2024-07-04
#### Added
- Python packages finder
- certbot configurer

#### Fixed
- KDE installler optimization

### [0.3.50] - 2024-07-01
#### Added
- More domains in **Saturnus** host

#### Fixed
- *ansible_check_mode* check required
- Some hosts IP changes

### [0.3.49] - 2024-06-21
#### Fixed
- Some domains in **Saturnus** host

### [0.3.48] - 2024-06-19
#### Added
- More packages to install in **Saturnus** host

#### Fixed
- Apache tasks needs Apache tags

### [0.3.47] - 2024-06-13
#### Fixed
- *dos2unix* conversion

### [0.3.46] - 2024-06-05
#### Added
- **Saturnus** host SSH key

#### Fixed
- Some cosmetic changes

#### Deleted
- Pseudo-automatic SSH key generator
- Unnecessary **Rayo** host SSH key file

### [0.3.45] - 2024-06-04
#### Fixed
- *CIFS* and *SSHFS* mounts cleanup
- Better SSH keys management for *SSHFS* *fstab* mounts
- IPv6 support is temporarily disabled

### [0.3.44] - 2024-06-02
#### Added
- **Saturnus** host

#### Fixed
- Some **Iuppiter** host missconfigurations

### [0.3.43] - 2024-05-21
#### Fixed
- Changed some storage servers
- Useless packages existence checking
- This task has to be executed even in check mode
- There is no need to hide this task

### [0.3.42] - 2024-05-19
#### Added
- Support for *snap* packages

### [0.3.41] - 2024-05-16
#### Added
- New HTTP host type

### [0.3.40] - 2024-05-14
#### Fixed
- Apache template change
- More active modules in Apache
- Bad authentication configuration for **Xana** host

#### Deleted
- Some old hosts
- **Rayo** host does not need Apache as it uses a K8s version

### [0.3.39] - 2024-04-01
#### Fixed
- Partially reverted some improvements previously made
    - One more time, yes, I know

### [0.3.38] - 2024-03-20
#### Added
- New *sk-ecdsa-sha2-nistp256* keys for some existent hosts

### [0.3.37] - 2024-03-01
#### Added
- **Nike** host
    - Still experimental

#### Fixed
- Partially reverted some improvements previously made

#### Fixed
- No gathering facts in **deploy_authorized_keys.yml** playbook file

### [0.3.36] - 2024-02-26
#### Added
- Deployer for **authorized_keys** file in native Ansible format
- Executable permissions for **deploy_authorized_keys.yml** playbook file
- New *sk-ssh-ed25519* key for an existent host
- New *sk-ssh-ed25519* key for another existent host
- New *sk-ssh-ed25519* key for the last intended existent host
- **Rayo** host

#### Fixed
- Various improvements

#### Deleted
- Deployer for **authorized_keys** file in bash format

### [0.3.35] - 2024-01-21
#### Added
- Scripts for Passport system

#### Fixed
- DDNS various errors

### [0.3.34] - 2023-12-21
#### Added
- Compatibility with 'www.' apache sites
- Smarter reverse proxifying
- SSL reverse proxifying

#### Fixed
- Some **Ultra** sites need the new 'www' configuration
- Some **Xana** sites need the new 'www' configuration
- Some **Ultra** sites need extra configuration
- Some **Xana** sites need extra configuration

#### Deleted
- Obsolete configuration

### [0.3.33] - 2023-12-19
#### Fixed
- More services in **Xana** server
- Services order in **Eros** server

#### Deleted
- Obsolete configuration

### [0.3.32] - 2023-12-14
#### Fixed
- **Xana** server connectivity issues
- **README.md** formatting

### [0.3.31] - 2023-11-30
#### Added
- New key for GitHub deployments
- **Xana** server reverse proxy configuration
- **Xana** server website configuration
- **Zelo** client streaming password
- **Tique** client streaming password

#### Fixed
- Deployer for authorized_keys file with parameters
- *Xana.pub* wrong public key file

#### Deleted
- Old servers (**Neptuno**, **Tellus** and **Uranus**)
- Unnecesary apache mods

### [0.3.30] - 2023-11-20
#### Added
- Deployer for authorized_keys file

#### Fixed
- RSA SSH keys changed to ed25519 keys

### [0.3.29] - 2023-11-08
#### Fixed
- Some Apache configuration issues
- Network reconfiguration

### [0.3.28] - 2023-10-30
#### Added
- Codacy badge

### [0.3.27] - 2023-10-19
#### Fixed
- Various errors

### [0.3.26] - 2023-10-19
#### Added
- New server (**Carpo**)

#### Fixed
- New connection method for SSH-mounted devices
- Windows servers excluded from Linux playbooks

### [0.3.25] - 2023-10-15
#### Fixed
- Apache sites template variable names
- New IP range in local network

### [0.3.24] - 2023-10-06
#### Added
- *btop* package for some hosts
    - Debian and 32-bit Raspbian seems to be incompatible

#### Fixed
- Various optimizations

### [0.3.23] - 2023-09-18
#### Fixed
- New configuration for enigma2 proxifying

### [0.3.22] - 2023-09-12
#### Fixed
- Configuration for redirections
- New connection method

### [0.3.21] - 2023-08-22
#### Added
- New server (**Xana**)
    - Missing key files for server are intentional, see next commit
    - Now, keys can be generated with Ansible (and a little of help)
- Rescue block if SSH keys are not generated

#### Fixed
- Change in public keys format

### [0.3.20] - 2023-08-17
#### Fixed
- host_id var was suppressed

### [0.3.19] - 2023-08-14
#### Added
- New server (**Tellus**)

### [0.3.18] - 2023-08-14
#### Added
- Python installer
- Apache2 configurer

### [0.3.17] - 2023-08-01
#### Fixed
- Some strings quotation
- */root/.ssh* directory could not exist

### [0.3.16] - 2023-07-31
#### Fixed
- Dynamic DNS configuration separated from script

### [0.3.15] - 2023-07-31
#### Fixed
- Dynamic DNS change
- Host IP change

### [0.3.14] - 2023-07-24
#### Added
- Timezone configuration

### [0.3.13] - 2023-07-24
#### Fixed
- Some weather MOTD location corrections
- Temporary (or permanent, maybe) dynamic DNS name changes
- **Eros** is a server now
- More dynamic DNS hosts

### [0.3.12] - 2023-07-20
#### Added
- New server

#### Fixed
- Duplicated entry in **Changelog** section in **README.md**

### [0.3.11] - 2023-07-20
#### Fixed
- User and password variables for Dynamic DNS are now group variables

### [0.3.10] - 2023-07-20
#### Fixed
- Loop index var in Dynamic DNS template

### [0.3.9] - 2023-06-15
#### Fixed
- MOTD var iteration

### [0.3.8] - 2023-06-13
#### Added
- Template support for MOTD

### [0.3.7] - 2023-06-13
#### Added
- New server

### [0.3.6] - 2023-06-11
#### Added
- Crontab entry for *Uranus*

### [0.3.5] - 2023-06-10
#### Fixed
- **confirm_facilities** role compatibility tags

### [0.3.4] - 2023-06-10
#### Added
- **installer** role now calls **confirm_facilities** role

### [0.3.3] - 2023-05-19
#### Fixed
- Error if ~/.bash_aliases doesn't exist

### [0.3.2] - 2023-05-19
#### Added
- New server

### [0.3.1] - 2023-05-13
#### Deleted
- An ansible-incompatible server from inventory

### [0.3.0] - 2023-05-13
#### Added
- **confirm_facilities** role created based in other repo script
- **confirm_facilities.yml** playbook
- **confirm_facilities.yml** executable permissions

### [0.2.2] - 2023-05-13
#### Fixed
- Updater role

### [0.2.1] - 2023-05-13
#### Fixed
- Internally host accessing when available

### [0.2.0] - 2023-05-13
#### Added
- **installer** role created based in other repo script
- **installer.yml** playbook
- **installer.yml** executable permissions

### [0.1.0] - 2023-02-19
#### Added
- **updater** role created from other repo content
- **updater.yml** playbook
- **updater.yml** executable permissions

### [0.0.4] - 2023-02-19
#### Added
- **secrets.tgz.gpg** encrypted secrets container

### [0.0.3] - 2023-02-18
#### Added
- **inventory** folder

#### Fixed
- **README.md** file formatting

### [0.0.2] - 2023-02-18
#### Added
- **.gitignore** file

### [0.0.1] - 2023-02-18
#### Added
- **README.md** file


## Acknowledgments, sources consulted and other credits
* To the [official Ansible documentation](https://docs.ansible.com/ansible/latest/index.html), for obvious reasons
