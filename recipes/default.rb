#
# Cookbook Name:: mysql-server
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "mysql-server" do
	action :install
end

template "/etc/my.cnf" do
	source "my.cnf.erb"
	mode "0644"
	notifies :restart, "service[mysqld]"
end

service "mysqld" do
	action [:enable, :start]
end
