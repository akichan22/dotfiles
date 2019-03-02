case node[:platform]
when 'darwin'
  package 'neovim/neovim/neovim'
  package 'global'
when 'ubuntu'
  package 'python-dev'
  package 'python-pip'
  package 'python3-dev'
  package 'python3-pip'
  package 'neovim'
when 'arch'
  package 'neovim'
end

directory "#{ENV['HOME']}/.config/nvim/" do
    action :create
    not_if "test -d #{ENV['HOME']}/.config/nvim/"
end

dest_path = "#{ENV['HOME']}/.config/nvim/installer.sh"
execute 'install dein.vim' do
  command "curl -o #{dest_path} https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh"
  not_if "test -e #{dest_path}"
end

ln '.config/nvim/init.vim' do
  source 'nvim/init.vim'
end
