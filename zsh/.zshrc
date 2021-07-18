# ohmyzsh defaults
export ZSH="/Users/opus/.oh-my-zsh"
export PATH=$HOME/bin:$PATH

# Enable colors and change prompt:
# sindresorhus/pure: https://github.com/sindresorhus/pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

plugins=(
	z
	git
	tmux
	vi-mode
	zsh-autosuggestions
	zsh-syntax-highlighting
)


source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

# general aliases
alias o="xdg-open"
alias k="kubectl"
alias vim="nvim"
alias tn="tmux new -s"
alias tl="tmux ls"
alias ta="tmux attach"
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias dotfiles="cd ~/dotfiles"
alias ytd="youtube-dl --verbose -f best -o '%(title)s.%(ext)s'"

# git aliases
alias gc="git commit -v"
alias gst="git status --short"
alias ga="git add"
alias gd="git diff --minimal"
alias gl="git log --oneline --decorate --graph"

# ctrl+r search history
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# custom exports
export GOPATH=$HOME/go
export PATH=$PATH:~/go/bin/
export PATH="$HOME/.pyenv/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/tmp/trash/google-cloud-sdk/path.zsh.inc' ]; then . '/tmp/trash/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/tmp/trash/google-cloud-sdk/completion.zsh.inc' ]; then . '/tmp/trash/google-cloud-sdk/completion.zsh.inc'; fi
