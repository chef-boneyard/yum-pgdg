name             'yum-pgdg'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs/Configures yum-pgdg'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.3'

depends 'yum', '~> 3.0'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-pgdg' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-pgdg/issues' if respond_to?(:issues_url)
