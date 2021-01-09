let vspacecodeDefautls = ./layers/vspacecode-defaults.dhall

let fixTerminal = ./layers/fix-terminal.dhall

let fixVim = ./layers/fix-vim.dhall

let terminal = ./layers/terminal.dhall

let symbolNavi = ./layers/symbol-navigation.dhall

in  vspacecodeDefautls # fixTerminal # terminal # fixVim # symbolNavi
