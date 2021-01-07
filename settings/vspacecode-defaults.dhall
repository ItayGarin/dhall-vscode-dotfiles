let vimC = ../types/VimCommand.dhall

let vimB = ../types/VimKeyBinding.dhall

let `vim.insertModeKeyBindingsNonRecursive`
    : List vimB.VimKeyBinding
    = [ vimB.makeAfterBinding [ "f", "d" ] [ "<Esc>" ] ]

let `vim.normalModeKeyBindingsNonRecursive`
    : List vimB.VimKeyBinding
    = [ vimB.makeCommandsBinding
          [ "," ]
          [ vimC.Basic "vspacecode.space"
          , vimC.WithArgs { command = "whichkey.triggerKey", args = "m" }
          ]
      ]

let `vim.visualModeKeyBindingsNonRecursive` =
      `vim.normalModeKeyBindingsNonRecursive`

in  { `vim.insertModeKeyBindingsNonRecursive`
    , `vim.normalModeKeyBindingsNonRecursive`
    , `vim.visualModeKeyBindingsNonRecursive`
    }
