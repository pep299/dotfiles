.PHONY: setup mas generate/brew/script

setup:
	sh ./mac/defaults.sh
	sh ./warp/warp.sh
	sh ./syml.sh
	mas

mas: ./brew/Masfile
	brew bundle --file=./brew/Masfile

generate/brew/script: ./brew/Brewfile
	cat ./brew/Brewfile | sed 's/^brew /brew install /;s/^cask /brew install --cask /' > ./brew/install_brew.sh
