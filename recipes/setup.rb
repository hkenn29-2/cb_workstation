package 'vim-enhanced'
package 'nano'

package 'tree' do
  action :install
end

package 'git'
package 'ntp'

template '/etc/motd' do
  source 'motd.erb'
  action :create
end
