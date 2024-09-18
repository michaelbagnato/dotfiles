# Set default text editor
export EDITOR='nvim'

# Turn cd requirement off
setopt AUTO_CD

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load Spaceship
source /usr/local/opt/spaceship/spaceship.zsh
