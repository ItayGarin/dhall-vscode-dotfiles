let defaults = ./vspacecode-defaults.dhall

let vimB = ../types/VimKeyBinding.dhall

let `vim.normalModeKeyBindingsNonRecursive`
    : List vimB.VimKeyBinding
    = let mcAll =
            vimB.makeBasicCommandBinding
              [ "g", "r", "m" ]
              "editor.action.selectHighlights"

      let mcLineBelow =
            vimB.makeBasicCommandBinding
              [ "g", "r", "j" ]
              "editor.action.insertCursorBelow"

      let mcLineAbove =
            vimB.makeBasicCommandBinding
              [ "g", "r", "k" ]
              "editor.action.insertCursorAbove"

      in  [ mcAll, mcLineBelow, mcLineAbove ] # defaults.normal

let `vim.insertModeKeyBindingsNonRecursive` = defaults.insert

let `vim.visualModeKeyBindingsNonRecursive`
    : List vimB.VimKeyBinding
    = let mcLineEnds =
            vimB.makeBasicCommandBinding
              [ "g", "r", "a" ]
              "editor.action.insertCursorAtEndOfEachLineSelected"

      in  [ mcLineEnds ] # defaults.visual

in  { `vim.easymotion` = True
    , `vim.useSystemClipboard` = True
    , `vim.useCtrlKeys` = False
    , `vim.normalModeKeyBindingsNonRecursive`
    , `vim.insertModeKeyBindingsNonRecursive`
    , `vim.visualModeKeyBindingsNonRecursive`
    }
