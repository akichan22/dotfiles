package 'tmux'

case node[:platform]
when 'darwin'
  package 'reattach-to-user-namespace'
  package 'tmux-mem-cpu-load'
when 'ubuntu', 'arch'
  package 'xsel'
end

ln '.tmux.conf'
