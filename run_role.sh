#!/bin/bash

ansible-playbook -i localhost, playbook.yml --tags $1 -K
