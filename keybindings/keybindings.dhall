let vspacecodeDefautls = ./layers/vspacecode-defaults.dhall

let fixTerminal = ./layers/fix-terminal.dhall

let fixVim = ./layers/fix-vim.dhall

let terminal = ./layers/terminal.dhall

in  vspacecodeDefautls # fixTerminal # terminal # fixVim
