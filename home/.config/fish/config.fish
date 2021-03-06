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

# PATH
set -x PATH $HOME/.gem/ruby/2.3.0/bin/ $PATH
set -x PATH $HOME/workspace/bin/ $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set PATH $HOME/Library/Python/3.6/bin/ $PATH

# direnv
eval (direnv hook fish)
set -x EDITOR vi

# pipenv
set PIPENV_VENV_IN_PROJECT true
