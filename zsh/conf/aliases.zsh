########################################################################################
### ZSH ALIASES
########################################################################################

# This file contains personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes.
# For a full list of active aliases, run `alias`.

########################
### COMMAND ALIASES ###
########################
alias cat=bat
alias ls=lsd
alias cd=z

# --------------------------------------------------------------------------
# Program Aliases
alias vim=nvim
# --------------------------------------------------------------------------

# --------------------------------------------------------------------------
# Config file aliases
alias zrc="vim ~/dotfiles/zsh/.zshrc -c \"cd ~/dotfiles\""
alias hrc="vim ~/dotfiles/hypr/hyprland.conf -c \"cd ~/dotfiles\""
alias szrc="source ~/.zshrc"
alias shrc="source ~/dotfiles/hypr/hyprland.conf"
alias edit-alias="vim ~/dotfiles/zsh/conf/aliases.zsh -c \"cd ~/dotfiles\""
# --------------------------------------------------------------------------

# --------------------------------------------------------------------------
# port forwarding
alias pf-imdi-clickhouse="kubectl --kubeconfig ~/files/anera/infra/kubeconfig.yaml port-forward svc/clickhouse 8125:8123 -n prod-intelligence-markets-data-ingestion"
alias pf-imdi-mongo="kubectl --kubeconfig ~/files/anera/infra/kubeconfig.yaml port-forward svc/mongodb-headless 27019:27017 -n prod-intelligence-markets-data-ingestion"
# --------------------------------------------------------------------------
