########################################################################################
### ZSH CONFIGURATION
########################################################################################

# This file is just an entrypoint, edit relevant files or create new ones to configure zsh.

########################
### CORE ###
########################
# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Config directory (directory of this file, works when symlinked)
ZSH_CONFIG_DIR="${${(%):-%x}:A:h}"

########################################################
### Load all configuration files ###
########################################################
# Appearance and plugins must be loaded before Oh My Zsh
source "$ZSH_CONFIG_DIR/conf/appearance.zsh"
source "$ZSH_CONFIG_DIR/conf/plugins.zsh"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Aliases (after Oh My Zsh so they override defaults)
source "$ZSH_CONFIG_DIR/conf/aliases.zsh"

########################
### MISC ###
########################
# Preferred editor for local and remote sessions
export EDITOR='nvim'

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/share/nvm/init-nvm.sh" ] && \. "/usr/share/nvm/init-nvm.sh" # Load nvm
[ -s "/usr/share/nvm/bash_completion" ] && \. "/usr/share/nvm/bash_completion" # Load completion

source "$ZSH_CONFIG_DIR/conf/shell_start.zsh"