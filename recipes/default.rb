#
# Cookbook Name:: directories
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# create directories
data_bag_item('directories','directory')['directories'].each do |dir|
  # if roles are specified in directory, check if directory is target
  if dir.has_key? "roles"
    if (dir["roles"] & node["roles"]).empty?
      next
    end
  end

  directory dir["name"] do
    owner dir["owner"]
    group dir["group"]
    mode  dir["mode"]
  end
end
