name 'boost'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs the Boost C++ Libraries'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'
provides 'boost'
recipe 'boost', 'Installs libboost-dev'

depends 'build-essential'

%w( amazon debian ubuntu redhat centos scientific fedora oracle ).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/boost' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/boost/issues' if respond_to?(:issues_url)
