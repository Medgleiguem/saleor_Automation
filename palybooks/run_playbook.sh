#!/bin/bash
# --------------------------------------
# Script to load .local.env and run Ansible playbook
# --------------------------------------

# Exit immediately if any command fails
set -e

# Make sure .local.env exists
if [ ! -f .local.env ]; then
    echo ".local.env file not found!"
    exit 1
fi

# Export all variables from .local.env
set -a
source .local.env
set +a

# Run the Ansible playbook
ansible-playbook main.yml
