let kb = ../types/KeyBinding.dhall

let mkB = kb.makeKeyBinding

let mkWhenB = kb.makeWhenKeyBinding

in  [ mkB "ctrl+o" "-workbench.action.files.openFile"
    , mkB "ctrl+o" "-workbench.action.files.openLocalFile"
    , mkWhenB
        "ctrl+o"
        "extension.vim_ctrl+o"
        "editorTextFocus && vim.active && !inDebugRepl"
    , mkB "ctrl+r" "-workbench.action.openRecent"
    , mkWhenB
        "ctrl+r"
        "extension.vim_ctrl+r"
        "editorTextFocus && vim.active && !inDebugRepl"
    ]
