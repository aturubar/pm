g_level :info
log_location STDOUT
node_name 'admin'
client_key '/share/admin.pem'
validation_client_name 'guest'
validation_key '/share/domcom.pem'
chef_server_url 'https:/chefs.dom.com/organizations/domcom'
cookbook_path ['/distr/cookbooks']
