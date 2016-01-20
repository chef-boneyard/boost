#
# Cookbook Name:: boost
# Attributes:: default
#
# Copyright 2009-2016, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['boost']['source'] = 'http://sourceforge.net/projects/boost/files/boost/1.60.0/'
default['boost']['file'] = 'boost_1_60_0.tar.gz'
default['boost']['build_dir'] = 'boost_1_60_0'
default['boost']['source_install_deps'] = if platform_family?('debian')
                                            %w(libbz2-dev python-dev tar)
                                          else
                                            %w(bzip2-devel python-devel tar)
                                          end
