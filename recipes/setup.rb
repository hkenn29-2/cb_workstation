package 'vim-enhanced'
package 'nano'

package 'tree' do
  action :install
end

package 'git'
package 'ntp'

file '/etc/motd' do
  content "This server is AWS
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
  "
  action :create
  owner 'root'
  group 'root'
end
