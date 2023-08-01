# Ansible
[![GitHub commits](https://badgen.net/github/commits/Veltys/Ansible)](https://GitHub.com/Veltys/Ansible/commit/)
[![GitHub latest commit](https://badgen.net/github/last-commit/Veltys/Ansible)](https://GitHub.com/Veltys/Ansible-apt/commit/)
[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/Veltys/Ansible/blob/master/LICENSE.md)

Ansible master repository with different useful roles


## Description
Ansible master repository that contains a collection of different useful roles that can be leveraged in the automation of various tasks


## Changelog
### To-do (*TODO*)
- [ ] Create a to-do list

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
- **README.md** file format

### [0.0.2] - 2023-02-18
#### Added
- **.gitignore** file

### [0.0.1] - 2023-02-18
#### Added
- **README.md** file


## Acknowledgments, sources consulted and other credits
* To the [official Ansible documentation](https://docs.ansible.com/ansible/latest/index.html), for obvious reasons
