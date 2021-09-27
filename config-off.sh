#!/usr/bin/env bash

# allow_list not yet supported

# iptables -D FORWARD -m set --match-set allow_list src -j ACCEPT
# iptables -D INPUT -m set --match-set allow_list src -j ACCEPT

iptables -D FORWARD -m set --match-set block_list src -j DROP
iptables -D INPUT -m set --match-set block_list src -j DROP
