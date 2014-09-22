#!/bin/sh
#
# Provision our VM with Chef tools.
#
# Chris Weyl <christopher.weyl@centurylink.com> 2014

apt-get install -y git

curl -L https://www.opscode.com/chef/install.sh | bash
chef-client -v

# ensure our path is configured
echo 'export PATH="/opt/chef/embedded/bin:$PATH"' > /etc/profile.d/chef.sh
