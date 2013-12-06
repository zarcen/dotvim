Introduction
============

This is zarcen's vim configuration files, including '.vimrc' and '.gvimrc'.  
Currently, the following plugin is used:

- *(plugin name)* - *(its [github repos] or [vim-scripts repos])*
- vundle - gmarik/vundle
- nerdtree - scrooloose/nerdtree
- vim-nerdtree-tabs - jistr/vim-nerdtree-tabs
- taglist - vim-scripts/taglist
- vim-easymotion - Lokaltog/vim-easymotion
- syntastic - scrooloose/syntastic
- ctrlp - kien/ctrlp
- ctags - vim-scripts/ctags
- EasyGrep - vim-scripts/EasyGrep
- ListToggle - Valloric/ListToggle
- YouCompleteMe - Valloric/YouCompleteMe
- javacomplete - vim-scripts/javacomplete
- rubycomplete - vim-scripts/rubycomplete

I use the plugin 'vundle' to automatically manage/install/update/remove my vim's plugin,  
For more details, refer to [vundle](https://github.com/gmarik/vundle)   
or the kindly [introduction](http://blog.chh.tw/posts/vim-vundle/) written in Chinese.

This configuration could be used for vim, MacVim, or gvim.

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

Demos
=====
Press F2 to open [nerdtree](https://github.com/scrooloose/nerdtree) and [nerdtree-tab](https://github.com/jistr/vim-nerdtree-tabs)
![](http://i.imgur.com/6EKA9Vk.png)

Press F3 to open [taglist]()
![](http://i.imgur.com/ivPue02.png)

The completion realized thank to [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
![](http://i.imgur.com/UHQpGTT.png)

The quickly easy movement realized thank to [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
![](http://i.imgur.com/3N2lOuw.png)

Quickly find and open your file/directory by [ctrlp]()
![](http://i.imgur.com/AWA0Zt9.png)

Detect the compilation error while editing by [syntastic](https://github.com/scrooloose/syntastic)
![](http://i.imgur.com/GRPwc2y.png)

Todo
====
- Friendly explanation about the .vimrc 
- FAQ
