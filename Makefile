install-homebrew:
	@echo "This will download and run the Homebrew install script (from https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh). Running shell script from a static url is dangerous. Continue? (Y/n): " && read ans && [ $${ans:-Y} = Y ] || [ $$ans = y ]
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-deps:
	@git config --global alias.lola "log --graph --decorate --pretty='format:%C(auto)%h %d %s %C(green)%an%C(bold blue) %ad' --abbrev-commit --all --date=relative"
	brew tap hashicorp/tap
	brew install neovim rg sl htop hashicorp/tap/terraform hashicorp/tap/packer tldr wget fastfetch node z tmux fzf fd

setup-zsh:
	@echo "This will wipe your existing ~/.zshrc file.  Continue? (Y/n): " && read ans && [ $${ans:-Y} = Y ] || [ $$ans = y ]
	cp zshrc ~/.zshrc
	zsh -c "source ~/.zshrc"

install-omz:
	@echo "This will download and run Oh My Zsh's install script (from https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh). Running shell script from a static url is dangerous.  Continue? (Y/n): " && read ans && [ $${ans:-Y} = Y ] || [ $$ans = y ]
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

setup-tmux:
	@echo "This will wipe existing tmux configuration and install the Tmux Plugin Manager (from https://github.com/tmux-plugins/tpm) Continue? (Y/n): " && read ans && [ $${ans:-Y} = Y ] || [ $$ans = y ]
	brew install tmux
	rm -rf ~/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp tmux.conf ~/.tmux.conf
	~/.tmux/plugins/tpm/scripts/install_plugins.sh



install-eepyvim:
	@echo "This will delete your existing neovim config Continue? (Y/n): " && read ans && [ $${ans:-Y} = Y ] || [ $$ans = y ]
	rm -rf ~/.local/share/nvim
	rm -rf ~/.config/nvim
	rm -rf ./eepyvim
	git clone https://github.com/JenGoldstrich/eepyvim.git 
	cd eepyvim && make install
	// Each Makefile line is its own shell session, so no need to cd back
	rm -rf ./eepyvim
