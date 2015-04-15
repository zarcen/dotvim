Introduction
============

This is my vim configuration files, the .vim directory.

The following is the list of plugins currently used:

- *(plugin name)* - *(its [github repos] or [vim-scripts repos])* | *description*
- vundle - gmarik/vundle | plugin management tool
- nerdtree - scrooloose/nerdtree | tree structure of quickly access filesystem
- vim-nerdtree-tabs - jistr/vim-nerdtree-tabs | tabpage of nerdtree
- taglist - vim-scripts/taglist | show tags (function definition, variable definition)
- vim-easymotion - Lokaltog/vim-easymotion | a fantastic way of movement, quickly jumping to any location in the screen
- syntastic - scrooloose/syntastic | show syntax error/warning
- ctrlp - kien/ctrlp | quickly search/open file with fuzzy matching or regular expression
- ctags - vim-scripts/ctags | necessary tool to do code tracing 
- EasyGrep - vim-scripts/EasyGrep | fast and easy find and replace across multiple files 
- ListToggle - Valloric/ListToggle | quick open/close the quickfix list in vim
- YouCompleteMe - Valloric/YouCompleteMe | a powerful completion plugin for C-family language and Python
- javacomplete - vim-scripts/javacomplete | java completion
- rubycomplete - vim-scripts/rubycomplete | ruby completion

I use the plugin 'vundle' to automatically manage/install/update/remove my vim's plugin,  
For more details, refer to [vundle](https://github.com/gmarik/vundle)   
or the kindly [introduction](http://blog.chh.tw/posts/vim-vundle/) written in Chinese.

This configuration could be used for vim, MacVim, or gvim.
I mostly work on Mac, so it's more customized for MacOSX.
But, it supposed to be portable (Linux, MacOSX, Windows).
The difference between vimrc and gvimrc is that gvimrc is only for GUI settings.
It highly supports C/C++/Python development because of my need.

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

For the completion feature, the quick installation in MacOSX is:

Compiling YCM with semantic support for C-family languages:

    $ cd ~/.vim/bundle/YouCompleteMe
    $ ./install.sh --clang-completer

Compiling YCM without semantic support for C-family languages:

    $ cd ~/.vim/bundle/YouCompleteMe
    $ ./install.sh

For more installation detail, please see the document of [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

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

FAQ
===
1. No completion / Error message of lacking python

The completion feature is realized by the plugin [YouCompleteMe](https://github.com/Valloric/YouCompleteMe).
However, it requires python installed on your environment first so that it can serve as the completion server.

2. Why are my arrow keys (up, down, right, left) not working?

Hey, you are using Vim! You got to get used to 'hijk'!
If you just start to learn it, it's the best to lock them and bear with only using 'hijk'.
If you really want to use them, you can unlock by comment these lines in vimrc:

    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>

3. What is leader key in the configuration?
 
    let mapleader=","
    let g:mapleader=","



Todo
====
- Friendly explanation about the .vimrc 
