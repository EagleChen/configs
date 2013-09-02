# /bin/bash

cd /tmp
rm -rf configs
echo "Cloning config files"
git clone https://github.com/EagleChen/configs

cp configs/.gitconfig ~/
cp configs/spfvim/.* ~/
cp configs/.zshrc ~/

update vim
vim +BundleInstall! +BundleClean +q

echo "install spfvim: sh <(curl https://j.mp/spf13-vim3 -L)"

echo "remember to update vim again by running: vim +BundleInstall! +BundleClean +q"

echo "install oh-my-zsh: curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

echo "remember to cp .zshrc again"

echo "Zsh, Git & Vim config files updated, please relogin"
