export PATH="/usr/local/sbin:$PATH"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# alias
alias cdd="cd ~/Desktop"
alias ll="ls -la"
alias mr="mysql -u root -p"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/take/google-cloud-sdk/path.bash.inc' ]; then source '/Users/take/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/take/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/take/google-cloud-sdk/completion.bash.inc'; fi
