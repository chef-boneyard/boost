# The appropriate tarbal and download url can be constructed by the 
# three-part boost version. i.e. 1.58.0. Therefore, it's normally only
# required to override the first few attributes.

# Major version number
default['boost']['source']['major_ver'] = "1"

# Minor version number
default['boost']['source']['minor_ver'] = "58"

# Patch version number
default['boost']['source']['patch_ver'] = "0"

# Base url where tarbal is downloaded from
default['boost']['source']['base_url'] = "http://sourceforge.net/projects/boost/files/boost"

# Tarbal download is either .gz or .bz2 compressed
default['boost']['source']['file_ext'] = ".gz"

# Tarbal has base file name in format of 'boost_1_58_0'
default['boost']['source']['file_base'] = 
    "boost_"\
    "#{node['boost']['source']['major_ver']}_"\
    "#{node['boost']['source']['minor_ver']}_"\
    "#{node['boost']['source']['patch_ver']}"

# File name is 'boost_1_58_0.tar.gz' or 'boost_1_58_0.tar.bz2'
default['boost']['source']['file'] = 
    "#{node['boost']['source']['file_base']}"\
    ".tar"\
    "#{node['boost']['source']['file_ext']}"

# Download url is constructed from base_url
default['boost']['source']['download_url'] = 
    "#{node['boost']['source']['base_url']}/"\
    "#{node['boost']['source']['major_ver']}."\
    "#{node['boost']['source']['minor_ver']}."\
    "#{node['boost']['source']['patch_ver']}/"\
    "#{node['boost']['source']['file']}"

# The build directory is where the tar command extracts to. There is no 
# need to change this.
default['boost']['source']['build_dir'] = "#{node['boost']['source']['file_base']}"

# Location where boost gets installed
default['boost']['source']['install_prefix'] = "/usr/local"

# The boost build command to compile and run
default['boost']['source']['build_cmd'] = 
    "./bootstrap.sh --prefix=#{node['boost']['source']['install_prefix']} && "\
    "./b2 install"
