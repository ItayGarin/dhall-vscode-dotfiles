let kb = ../types/KeyBinding.dhall

let mkB = kb.makeKeyBinding

let mkWhenB = kb.makeWhenKeyBinding

in  [ mkB "ctrl+alt+-" "-workbench.action.navigateBack"
    , mkWhenB "alt+left" "-workbench.action.terminal.focusPreviousPane" "terminalFocus"
    , mkB "alt+left" "workbench.action.navigateBack"
    ]