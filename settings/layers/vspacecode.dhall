let vimC = ../types/VimCommand.dhall

let vimB = ../types/VimKeyBinding.dhall

let VSpaceCodeOverride =
      { keys : Text, name : Text, type : Text, command : Text }

let remapQuickOpen
    : VSpaceCodeOverride
    = { keys = " "
      , name = "Quick Open"
      , type = "command"
      , command = "workbench.action.quickOpen"
      }

let remapShowCommands
    : VSpaceCodeOverride
    = { keys = ":"
      , name = "Show Commands"
      , type = "command"
      , command = "workbench.action.showCommands"
      }

in  { `vspacecode.bindingOverrides` = [ remapQuickOpen, remapShowCommands ] }
