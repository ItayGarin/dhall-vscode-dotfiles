.PHONY: default
default: clean dist/settings.json dist/keybindings.json

dist/settings.json: settings/settings.dhall
	cd settings && cat settings.dhall | dhall-to-json > ../dist/settings.json

dist/keybindings.json: keybindings/keybindings.dhall
	cd keybindings && cat keybindings.dhall | dhall-to-json > ../dist/keybindings.json

.PHONY: clean
clean:
	rm -f dist/*

.PHONY: install
install:
	cp dist/* ~/dotfiles/vscode/.config/Code/User
