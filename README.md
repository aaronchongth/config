# Workflow configurations

Setting up,

```bash
# Deps
sudo apt install git vim

# Setup
git clone https://github.com/aaronchongth/config ~/.config/aaron

# Set up .bashrc
source ~/.config/aaron/bash/setup.bash
add_to_bashrc
source ~/.bashrc

# Set up vim
sudo apt install vim
ln -sf ~/.config/aaron/vim/vimrc ~/.vimrc
# Install plugins with :PlugInstall
```

