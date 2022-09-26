# Exports
export ZSH=/Users/tompickard/.oh-my-zsh
export PATH="/opt/homebrew/bin:$PATH"
export VISUAL=nvim
export NPM_TOKEN="26f48033-d204-4bb4-acea-36a569b22a77"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/opt/homebrew/sbin

# Alias
alias attach='tmux attach-session -t'
alias attachw='tmux attach-session -t work'
alias st='git status'
alias ibrew='arch -x86_64 /usr/local/bin/brew'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jreese"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

source $ZSH/oh-my-zsh.sh

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tompickard/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tompickard/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tompickard/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tompickard/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tompickard/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tompickard/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tompickard/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tompickard/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
