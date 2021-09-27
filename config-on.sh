#!/usr/bin/env bash

# allow_list not yet supported

# ipset -N allow_list nethash
# ipset -A allow_list 142.251.5.138/32 # we don't block google
# ipset -A allow_list 10/8 # we don't block private ips
# ipset -A allow_list 172.16/12 # we don't block private ips
# ipset -A allow_list 192.168/16 # we don't block private ips
# ipset -A allow_list 127.0.0.1 # we don't block localhost
# ipset -L allow_list

ipset -N block_list nethash
ipset -A block_list 142.251.5.138/32 # we try to block google but this is secured by allow_list
ipset -A block_list 81.169.145.156/32 # block klaeff.de
ipset -L block_list

sudo iptables -I INPUT -m set --match-set block_list src -j DROP
sudo iptables -I FORWARD -m set --match-set block_list src -j DROP

# sudo iptables -I INPUT -m set --match-set allow_list src -j DROP
# sudo iptables -I FORWARD -m set --match-set allow_list src -j DROP
