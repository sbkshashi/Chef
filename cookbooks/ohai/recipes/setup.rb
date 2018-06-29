package 'git' do
	action :install
end

package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end

file '/etc/motd' do
	content "'Message from shashi'
	HOSTNAME: #{node['fqdn']}
	IPADDRESS: #{node['ipaddess']}
	CPU: #{node['cpu']['0']['model_name']}
	MEMORY: #{node['memory']['total']}"
	owner 'root'
	group 'root'
end

