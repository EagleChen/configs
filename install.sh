# /bin/bash

cd /tmp
rm -rf configs
echo "Cloning config files"
git clone https://github.com/EagleChen/configs

cp configs/.zshrc ~/
cp configs/.gitconfig ~/
cp configs/spfvim/* ~/

# update vim
vim +BundleInstall! +BundleClean +q

echo "Zsh, Git & Vim config files updated, please relogin"
