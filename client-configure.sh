#!/bin/sh
#
# Configure our Chef tools.
#
# Run as:
#
#   ./client-configure.sh server.hostname.or.ip
#
# Based on: http://www.centurylinklabs.com/tutorials/continuous-integration/installing-chef-on-the-centurylink-cloud/

_svr=$1

# there's no place like $HOME...
cd

# clone the chef-repo repository if we don't have one already
[ -d chef-repo ] || git clone https://github.com/opscode/chef-repo.git

cd chef-repo
mkdir -p ~/chef-repo/.chef
echo '.chef' >> .git/info/exclude
cd ~/chef-repo/.chef

# fetch and use our server's keys...
scp root@$_svr:/etc/chef-server/admin.pem .
scp root@$_svr:/etc/chef-server/chef-validator.pem .

knife configure --initial

# sanity check
knife client list
