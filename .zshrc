# Path to your oh-my-zsh installation.
export ZSH=/Users/tompickard/.oh-my-zsh
export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR=vim

# added by Anaconda2 4.2.0 installer
export PATH="/Users/tompickard/anaconda2/bin:$PATH"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jreese"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/tompickard/.rvm/gems/ruby-2.2.3/bin:/Users/tompickard/.rvm/gems/ruby-2.2.3@global/bin:/Users/tompickard/.rvm/rubies/ruby-2.2.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tompickard/.rvm/bin:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

source $ZSH/oh-my-zsh.sh

alias attach='tmux attach-session -t'
alias attachw='tmux attach-session -t work'
alias bower='noglob bower'

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh
