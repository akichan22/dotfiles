# homeshick
. "$HOME/.homesick/repos/homeshick/homeshick.fish"

# alias
alias l 'ls -l'
balias g git
balias vi nvim
balias tf terraform

# direnv
eval (direnv hook fish)

# function key
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'	# search history
  bind \c] peco_select_ghq_repository			# search git-repo
end
