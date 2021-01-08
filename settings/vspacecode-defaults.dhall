let vimC = ../types/VimCommand.dhall

let vimB = ../types/VimKeyBinding.dhall

let insert
    : List vimB.VimKeyBinding
    = [ vimB.makeAfterBinding [ "f", "d" ] [ "<Esc>" ] ]

let normalAndVisualDefaults
    : List vimB.VimKeyBinding
    = let leaderCmd =
            vimB.makeBasicCommandBinding [ "<space>" ] "vspacecode.space"

      let modeCmd =
            vimB.makeCommandsBinding
              [ "," ]
              [ vimC.Basic "vspacecode.space"
              , vimC.WithArgs { command = "whichkey.triggerKey", args = "m" }
              ]

      in  [ leaderCmd, modeCmd ]

let normal = normalAndVisualDefaults

let visual = normalAndVisualDefaults

in  { normal, insert, visual }
