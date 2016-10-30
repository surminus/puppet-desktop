## puppet-desktop

Puppet to help me quickly set up my Linux desktop environment

# Bootstrap

`sudo apt-get install git puppet-common`
`sudo mv /etc/puppet /etc/puppet-$(date +%F).bak`
`git clone https://github.com/surminus/puppet-desktop.git`
`sudo mv puppet-desktop /etc/puppet`
`sudo puppet apply /etc/puppet/manifests/site.pp`

If I want to make to changes, link the running directory to my dev env:

`sudo ln -s /etc/puppet ~/surminus/puppet-desktop`
