# boost Cookbook CHANGELOG
This file is used to list changes made in each version of the boost cookbook.

## 2.1.0 (2016-10-24)
- Use multipackage installs to speed up runs
- Convert integration testing to inspec
- Update chefspec for better unit testing output

## 2.0.0 (2016-09-15)
- Live stream the compilation for source installs
- Disable FC009
- Testing updates
- Require Chef 12.1

## v1.1.0 (2016-01-20)
- Added a new attribute for source install dep packages. This fixed failing source installs
- Bump to boost 1.60
- Fix the guard around the compilation to not trigger on default Ubuntu installs
- Added Serverspec tests
- Testing in Travis CI with docker for full integration tests

## v1.0.0 (2015-10-20)
- Updated to the latest boost files (1.59 vs. 1.51)
- Changed recommends -> depends in the metadata for build-essential since recommends does nothing
- Added travis and cookbook version badges to the readme
- Added a .foodcritic file to exclude rules
- Updated chefignore and .gitignore files
- Added Test Kitchen config
- Added standard Rubocop file
- Added Travis CI testing
- Removed yum from Berksfile and removed version constraint on Apt
- Added contributing and testing docs
- Added Gemfile with testing deps
- Added maintainers.md and maintainers.toml
- Added rakefile for simplified testing
- Added source_url and issues_url metadata
- Added basic Chefspec convergence test
- Updated Berksfile to 3.x format
- Removed Vagrantfile
- Removed "provides" from metadata
- Updated Opscode -> Chef Software
- Resolved multiple rubocop warnings

## v0.2.0 (2012-12-12)
- Changes not documented

## v0.1.0 (2009-10-25)
- [COOK-1832] - Add RHEL support (uses platform_family)
