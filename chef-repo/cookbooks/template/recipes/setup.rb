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
	content 'Message from shashi'
	owner 'root'
	group 'root'
end

