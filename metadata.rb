name 'yum-pgdg'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs and configures the PGDG yum repo'
version '3.0.0'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-pgdg'
issues_url 'https://github.com/chef-cookbooks/yum-pgdg/issues'
chef_version '>= 12.15'
