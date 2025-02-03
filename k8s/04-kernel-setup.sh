#!/bin/bash

sudo modprobe br_netfilter
sudo sysctl -w net.ipv4.ip_forward=1
