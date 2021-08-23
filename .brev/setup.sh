#!/bin/bash

################################################################################
##### Specify software and dependencies that are required for this project #####
################################################################################

##### Golang v16x #####
wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.7.linux-amd64.tar.gz
echo "" | sudo tee -a ~/.bash_profile
echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.bash_profile
echo "" | sudo tee -a ~/.zshrc
echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.zshrc
rm go1.16.7.linux-amd64.tar.gz

##### Install and Run Temporal Server #####
git clone https://github.com/temporalio/docker-compose.git /home/brev/workspace
export TMPDIR=/home/brev/tmp
cd /home/brev/workspace/docker-compose && docker-compose docker-compose up -d && cd -