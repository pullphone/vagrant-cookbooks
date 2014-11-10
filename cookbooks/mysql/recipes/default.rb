#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w[
  mysql-server-5.5
  mysql-client-5.5
  mysql-common
].each do |pkg|
  package pkg do
    action :install
  end
end
