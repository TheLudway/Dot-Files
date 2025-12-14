############################################
#  FASTFETCH (only on interactive shells)  #
############################################
if [[ -o interactive ]]; then
    fastfetch --logo ~/.config/fastfetch/Nyarch_Transparent_BG.png --logo-width "60"
fi

############################################
#         OH-MY-ZSH BASE INITIALIZATION    #
############################################
export ZSH="$HOME/.oh-my-zsh"

# Starship provides the prompt, so disable theme
ZSH_THEME=""

plugins=(
  git
  sudo
  history
  encode64
  copypath
  zsh-autosuggestions
  zsh-syntax-highlighting
  gh
  emacs
  auto-notify
  you-should-use
  asdf
  docker
)

source $ZSH/oh-my-zsh.sh

############################################
#                STARSHIP                  #
############################################
eval "$(starship init zsh)"

############################################
#                 ALIASES                  #
############################################

alias 2025='echo "YEAR OF THE LINUX DESKTOP!"'
alias esposa='echo "Mi esposa mía que amo tanto" | cowsay -f tux | lolcat'

############################################
#                  ASDF                    #
############################################

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# If asdf needs its own init script, uncomment:
# . "$HOME/.asdf/asdf.sh"

############################################
#        AUTO-ACTIVATE PYTHON VENV         #
############################################

autoload -U add-zsh-hook

load_venv_on_cd() {
  source /home/marie/Repos/Dot-Files/scripts/auto_env.sh
}

add-zsh-hook chpwd load_venv_on_cd
load_venv_on_cd  # run once at shell start

############################################
#                   PYENV                  #
############################################

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

