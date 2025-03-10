# dotfiles
ln -sf $PWD/zsh/.zprofile $HOME
ln -sf $PWD/zsh/.zshrc $HOME


# config
## karabiner
mkdir -p $HOME/.config/karabiner
ln -sf $PWD/karabiner/karabiner.json $HOME/.config/karabiner

## git
ln -sf $PWD/git/.gitconfig $HOME/.gitconfig
mkdir -p $HOME/.config/git
ln -sf $PWD/git/ignore $HOME/.config/git

## mise
mkdir -p $HOME/.config/mise
ln -sf $PWD/mise/config.toml $HOME/.config/mise

## colima
mkdir -p $HOME/.colima/default
ln -sf $PWD/colima/colima.yaml $HOME/.colima/default
mkdir -p $HOME/.docker
ln -sf $PWD/colima/config.json $HOME/.docker

## vscode
mkdir -p $HOME/.vscode/extensions
ln -sf $PWD/vscode/extensions.json $HOME/.vscode/extensions
ln -sf $PWD/vscode/settings.json $HOME/Library/Application\ Support/Code/User


# gnu command
mkdir -p $HOME/gnubin
ln -sf $(brew --prefix make)/bin/gmake $HOME/gnubin/make
ln -sf $(brew --prefix curl)/bin/curl $HOME/gnubin/curl
ln -sf $(brew --prefix gawk)/bin/gawk $HOME/gnubin/awk
ln -sf $(brew --prefix grep)/bin/ggrep $HOME/gnubin/grep
ln -sf $(brew --prefix gnu-sed)/bin/gsed $HOME/gnubin/sed
ln -sf $(brew --prefix gnu-tar)/bin/gtar $HOME/gnubin/tar

## coreutils
ln -sf $(brew --prefix coreutils)/bin/gbase64 $HOME/gnubin/base64
ln -sf $(brew --prefix coreutils)/bin/gcat $HOME/gnubin/cat
ln -sf $(brew --prefix coreutils)/bin/gdate $HOME/gnubin/date
ln -sf $(brew --prefix coreutils)/bin/gecho $HOME/gnubin/echo
ln -sf $(brew --prefix coreutils)/bin/gls $HOME/gnubin/ls
ln -sf $(brew --prefix coreutils)/bin/gmkdir $HOME/gnubin/mkdir
ln -sf $(brew --prefix coreutils)/bin/gpwd $HOME/gnubin/pwd
ln -sf $(brew --prefix coreutils)/bin/gsort $HOME/gnubin/sort
ln -sf $(brew --prefix coreutils)/bin/gtail $HOME/gnubin/tail
ln -sf $(brew --prefix coreutils)/bin/gtouch $HOME/gnubin/touch
ln -sf $(brew --prefix coreutils)/bin/gwhoami $HOME/gnubin/whoami
