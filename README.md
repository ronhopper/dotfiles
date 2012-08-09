Installation
------------

    ln -s dotfiles/.gitconfig .gitconfig
    ln -s dotfiles/.vimrc .vimrc
    ln -s dotfiles/.vim .vim

    # For command-T
    sudo apt-get install ruby ruby-dev vim-gnome
    cd dotfiles/.vim/bundle/command-t/ruby/command-t
    rvm use system
    ruby extconf.rb
    make

