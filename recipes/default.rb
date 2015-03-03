#
# Cookbook Name:: myapp-base
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
include_recipe 'apt'

myapp = node['myapp']

# install all specified packages
myapp['packages']['installed'].each do |name, ver|
  package name do
    version ver if ver
    action :install
  end
end

# set up users
myapp['users'].each do |name, data|
  user name do
    supports :manage_home => true
    home data['home']
    password data['password_shadow']
    shell '/bin/bash'
  end
end
