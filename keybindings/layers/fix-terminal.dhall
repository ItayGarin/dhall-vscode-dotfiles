let kb = ../types/KeyBinding.dhall

let mkB = kb.makeKeyBinding

let mkWhenB = kb.makeWhenKeyBinding

in  [ mkB "ctrl+j" "-workbench.action.togglePanel"
    , mkWhenB "ctrl+k" "" "terminalFocus && terminalProcessSupported"
    , mkB "ctrl+e" "-workbench.action.quickOpen"
    , mkWhenB
        "ctrl+w"
        "-extension.vim_ctrl+w"
        "editorTextFocus && vim.active && vim.use<C-w> && !inDebugRepl"	
    , mkWhenB
        "alt+down"
        "-workbench.action.terminal.focusNextPane"
        "terminalFocus && terminalProcessSupported"
    , mkWhenB
        "alt+right"
        "-workbench.action.terminal.focusNextPane"
        "terminalFocus && terminalProcessSupported"
    ]
