.PHONY: doc install uninstall

#set this to ~ when you're done testing
DEST=~/tmp/home

#'packages' are synonymous with subdirectories
PKGS=bash git

doc:
	@echo make install : run stow installer
	@echo make install : run stow UNinstaller

install:
	@echo stowing into $(DEST)
	@for pkg in $(PKGS) ; do \
		echo  -n "stowing $$pkg ... " ;\
		stow --ignore='\.git' \
			--ignore='\.gitignore' \
			--ignore='\.git-credentials' \
			--ignore='README*' \
			--ignore='.*\.sample' \
			-t $(DEST) \
			-S $$pkg ;\
		echo OK ; \
	done

uninstall:
	@echo removing from $(DEST)
	@for pkg in $(PKGS) ; do \
		echo -n "unstowing $$pkg ... " ;\
		stow --ignore='\.git' \
			--ignore='\.gitignore' \
			--ignore='\.git-credentials' \
			--ignore='README*' \
			--ignore='.*\.sample' \
			-t $(DEST) \
			-D $$pkg ;\
		echo OK ; \
	done
