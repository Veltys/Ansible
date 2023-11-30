#!/bin/bash

## deploy_authorized_keys
## @file	: deploy_authorized_keys.sh
## @brief	: authorized_keys file deployer
## @author	: Veltys
## @Date	: 2023-11-30
## @version	: 1.0.1
## @usage	: ./deploy_authorized_keys.sh [ansible-playbook commands] | bash deploy_authorized_keys.sh [ansible-playbook commands] | sh deploy_authorized_keys.sh [ansible-playbook commands]
## @note	: 


ansible-playbook installer.yml --tags authorized_keys_file "$@"
