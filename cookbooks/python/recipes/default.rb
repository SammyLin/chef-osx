package "python" do
  action :install
  version node['python']['version']
  options("--universal")
end

package "python3" do
  action :install
  version "3.3.2"
  options("--universal")
end

execute "move the system python" do
  command "sudo mv /usr/bin/python /usr/bin/python-original"
  only_if {File.exists?("/usr/bin/python")}
end

#execute "remove default python" do
#  command "sudo rm -r /System/Library/Frameworks/Python.framework/Versions/Current"
#  only_if "ll /System/Library/Frameworks/Python.framework/Versions/Current | grep '/usr/local/Cellar/python'"
#end

#execute "create python symlink" do
#  command "sudo ln -sf /usr/local/Cellar/python/#{node['python']['version']}/Frameworks/Python.framework/Versions/Current /System/Library/Frameworks/Python.framework/Versions/Current"
#  not_if { ::File.directory?("/System/Library/Frameworks/Python.framework/Versions/Current") }
#end
