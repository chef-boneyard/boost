Description
===========

Installs the [Boost](http://boost.org) development headers/libraries.

Requirements
============

## Platform:

* CentOS 
* Ubuntu
* Fedora

Usage
=====

Include this recipe to install boost development packages.

    include_recipe "boost"

Merely installs the boost development packages for a particular
platform. 

Boost can also be built from source by using the following recipe:

    include_recipe "boost::source"

This recipe downloads the tarbal, compiles and installs the boost
system.

License and Author
==================

Author:: Joshua Timberman (<joshua@chef.io>)

Copyright:: 2009, Chef Software, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
