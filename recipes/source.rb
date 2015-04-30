include_recipe "apt"
include_recipe "build-essential"

tar_file = node['boost']['source']['file']
remote_file "#{Chef::Config[:file_cache_path]}/#{tar_file}" do
  source node['boost']['source']['download_url']
  mode "0644"
  action :create_if_missing
end

# python headers and bzip needed for full boost compile
case node['platform']
when "centos","rhel","fedora"
    %w{python-devel bzip2-devel}.each do |pkg|
        package pkg
    end
when "ubuntu","debian"
    %w{python-dev libbz2-dev}.each do |pkg|
        package pkg
    end
end

case File.extname(tar_file)
when ".gz"
  tar_cmd = "tar xzvf #{tar_file}"
else
  tar_cmd = "tar xjvf #{tar_file}"
end

bash "install-boost" do
  user "root"
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
  #{tar_cmd}
  cd #{node['boost']['source']['build_dir']}
  #{node['boost']['source']['build_cmd']}
  EOH
  not_if { File.exist?("#{node['boost']['source']['install_prefix']}/boost/version.hpp") }
end

execute "ldconfig" do
  user "root"
  command "/sbin/ldconfig"
  action :nothing
end

cookbook_file "/etc/ld.so.conf.d/boost.conf" do
  owner "root"
  group "root"
  mode 00644
  source "boost.conf"
  backup false
  notifies :run, "execute[ldconfig]", :immediately
end
