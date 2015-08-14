package "postgresql-server-#{node['gre']['ver']}" do
  action :install
end
package "postgresql-sever-#{node['gre']['ver']}-dev" do
  action :install
end

bash "create_cluster" do
code <<-EOH
EOH
end

template "hba.conf" do
  path "/etc/posgresql/9.4/main/hba.conf"
  source "master.hba.conf"
  owner "root"
  group "postgres"
  mode "0660"
end
