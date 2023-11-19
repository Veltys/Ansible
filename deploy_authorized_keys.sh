#!/bin/bash

## deploy_authorized_keys
## @file	: deploy_authorized_keys.sh
## @brief	: authorized_keys file deployer
## @author	: Veltys
## @Date	: 2023-11-19
## @version	: 1.0.0
## @usage	: ./deploy_authorized_keys.sh | bash deploy_authorized_keys.sh | sh deploy_authorized_keys.sh
## @note	: 


ansible-playbook installer.yml --tags authorized_keys_file