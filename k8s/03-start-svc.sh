#!/bin/bash

sudo systemctl enable --now kubelet
sudo systemctl start crio.service
