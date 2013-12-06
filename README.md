
Introduction
============

This is zarcen's vim configuration files, including '.vimrc' and '.gvimrc'.
Currently, the following plugin is used:
    * (plugin name) - (its [github repos] or [vim-scripts repos])
    * vundle - gmarik/vundle
    * nerdtree - scrooloose/nerdtree
    * vim-nerdtree-tabs - jistr/vim-nerdtree-tabs
    * taglist - vim-scripts/taglist
    * vim-easymotion - Lokaltog/vim-easymotion
    * syntastic - scrooloose/syntastic
    * ctrlp - kien/ctrlp
    * ctags - vim-scripts/ctags
    * EasyGrep - vim-scripts/EasyGrep
    * ListToggle - Valloric/ListToggle
    * YouCompleteMe - Valloric/YouCompleteMe
    * javacomplete - vim-scripts/javacomplete
    * rubycomplete - vim-scripts/rubycomplete

Getting Started
===============

First, obtain the .vim directory under your $HOME

    $ cd ~
    $ git clone https://github.com/zarcen/dotvim.git
    $ mv dotvim .vim # WARN: backup your own .vim directory if necessary
    $ ln -s ~/.vim/vimrc .vimrc  # for main vim settings
    $ ln -s ~/.vim/gvimrc .vimrc # for the gvim or macvim settings

Now, simply open your vim:

    $ vim

You should see the following message:

    $ Installing Vundle..
      ...

And then install the plugins (you can remove plugins that you don't like)
    ![](http://i.imgur.com/W9XlccI.png)

Everything's done! Hope you enjoy it.

