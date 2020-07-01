#!/bin/bash
#
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Gennady Trafimenkov

SD=$(dirname $0)

CONFIG=$SD/ansible.cfg
INVENTORY=$SD/inventory

PLAY=$1

shift

ANSIBLE_CONFIG=$CONFIG ansible-playbook -i "$INVENTORY" "$PLAY" $*
