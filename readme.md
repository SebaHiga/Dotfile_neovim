
clone this

create file at
˜/.config/nvim/init.vim

set init.vim content to
source <cloned-repo-location>/Dotfile_neovim/init.vim

execute
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

open nvim
:PlugInstall

