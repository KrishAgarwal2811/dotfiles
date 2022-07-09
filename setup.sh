# Install and configure Starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes
echo "eval \"\$(starship init zsh)\"" >> ${ZSOTDIR:-$HOME}/.zshrc

# Install and configure ZSH Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZSOTDIR:-$HOME}/.zshrc

# Install and configure ZSH Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# Remove the `Systemd` message in starship terminal
mkdir -p ~/.config && printf "[container]\ndisabled = true" >> ~/.config/starship.toml
