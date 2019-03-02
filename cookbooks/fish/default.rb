package 'fish'
package 'curl'

execute 'change login-shell to fish' do
  command 'chsh -s $(which fish)'
  not_if 'echo $SHELL | grep fish'
end

ln '.config/fish/config.fish' do
  source 'fish/config.fish'
end

ln '.config/fish/fishfile' do
  source 'fish/fishfile'
end
