#
# Cookbook Name:: dotdeb
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "add dotdeb for apt-list" do
  code <<-EOS
  echo 'deb http://packages.dotdeb.org squeeze all' > /etc/apt/sources.list.d/dotdeb.list
  echo 'deb-src http://packages.dotdeb.org squeeze all' >> /etc/apt/sources.list.d/dotdeb.list
  echo 'deb http://packages.dotdeb.org squeeze-php54 all' >> /etc/apt/sources.list.d/dotdeb.list
  echo 'deb-src http://packages.dotdeb.org squeeze-php54 all' >> /etc/apt/sources.list.d/dotdeb.list
  wget http://www.dotdeb.org/dotdeb.gpg
  apt-key add dotdeb.gpg
  apt-get update -y
  EOS
end
