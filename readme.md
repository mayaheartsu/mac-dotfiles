<div align="center">
    <h1>maya's mac dotfiles 😼</h1>
</div>

<div align="center">
    <h1>installation</h1>
</div>

## acquire config files

```
git clone https://github.com/mayaheartsu/mac-dotfiles
cd mac-dotfiles
cp -r ~/mac-dotfiles/.config/* ~/.config/

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install git via Homebrew
brew install git

# Clone git repo for access to config files
git clone https://github.com/mayaheartsu/mac-dotfiles
```

## install script
run install script to download the appropriate packages and copy config files to their corresponding locations
```
cd mac-dotfiles
chmod +x install.sh
./install.sh
```

## todo
coming soon...?