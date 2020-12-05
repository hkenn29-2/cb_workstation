package 'vim-enhanced'
package 'nano'

package 'tree' do
  action :install
end

package 'git'
package 'ntp'

file '/etc/motd' do
  content 'This server is AWS'
  action :create
  owner 'root'
  group 'root'
end
