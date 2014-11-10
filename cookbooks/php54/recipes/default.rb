#
# Cookbook Name:: php54
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w[
  php5-cli
  php5-mysql
].each do |pkg|
  package pkg do
    action :install
  end
end
