# dotfiles
ln -s $PWD/zsh/.zprofile $HOME
ln -s $PWD/zsh/.zshrc $HOME


# config
mkdir -p $HOME/.config/karabiner
ln -s $PWD/karabiner/karabiner.json $HOME/.config/karabiner


# gnu command
mkdir -p $HOME/gnubin
ln -s $(brew --prefix make)/bin/gmake $HOME/gnubin/make
ln -s $(brew --prefix curl)/bin/curl $HOME/gnubin/curl
ln -s $(brew --prefix gawk)/bin/gawk $HOME/gnubin/awk
ln -s $(brew --prefix grep)/bin/ggrep $HOME/gnubin/grep
ln -s $(brew --prefix gnu-sed)/bin/gsed $HOME/gnubin/sed
ln -s $(brew --prefix gnu-tar)/bin/gtar $HOME/gnubin/tar

## coreutils
ln -s $(brew --prefix coreutils)/bin/gbase64 $HOME/gnubin/base64
ln -s $(brew --prefix coreutils)/bin/gcat $HOME/gnubin/cat
ln -s $(brew --prefix coreutils)/bin/gdate $HOME/gnubin/date
ln -s $(brew --prefix coreutils)/bin/gecho $HOME/gnubin/echo
ln -s $(brew --prefix coreutils)/bin/gls $HOME/gnubin/ls
ln -s $(brew --prefix coreutils)/bin/gmkdir $HOME/gnubin/mkdir
ln -s $(brew --prefix coreutils)/bin/gpwd $HOME/gnubin/pwd
ln -s $(brew --prefix coreutils)/bin/gsort $HOME/gnubin/sort
ln -s $(brew --prefix coreutils)/bin/gtail $HOME/gnubin/tail
ln -s $(brew --prefix coreutils)/bin/gtouch $HOME/gnubin/touch
ln -s $(brew --prefix coreutils)/bin/gwhoami $HOME/gnubin/whoami
