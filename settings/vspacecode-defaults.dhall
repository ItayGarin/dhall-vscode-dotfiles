let vimC = ../types/VimCommand.dhall

let vimB = ../types/VimKeyBinding.dhall

let `vim.insertModeKeyBindingsNonRecursive`
    : List vimB.VimKeyBinding
    = [ vimB.makeAfterBinding [ "f", "d" ] [ "<Esc>" ] ]

let normalAndVisualDefaults
    : List vimB.VimKeyBinding
    = let leaderCmd =
            vimB.makeCommandsBinding
              [ "<space>" ]
              [ vimC.Basic "vspacecode.space" ]

      let modeCmd =
            vimB.makeCommandsBinding
              [ "," ]
              [ vimC.Basic "vspacecode.space"
              , vimC.WithArgs { command = "whichkey.triggerKey", args = "m" }
              ]

      in  [ leaderCmd, modeCmd ]

let `vim.normalModeKeyBindingsNonRecursive` = normalAndVisualDefaults

let `vim.visualModeKeyBindingsNonRecursive` = normalAndVisualDefaults

in  { `vim.insertModeKeyBindingsNonRecursive`
    , `vim.normalModeKeyBindingsNonRecursive`
    , `vim.visualModeKeyBindingsNonRecursive`
    }
