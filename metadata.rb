name             "boost"
maintainer       "Chef Software, Inc."
maintainer_email "cookbooks@chef.io"
license          "Apache 2.0"
description      "Installs libboost"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.0"
provides         "boost"
recipe           "boost", "Installs libboost-dev"

recommends       "build-essential"

%w(ubuntu debian redhat centos suse scientific oracle amazon).each do |os|
  supports os
end

