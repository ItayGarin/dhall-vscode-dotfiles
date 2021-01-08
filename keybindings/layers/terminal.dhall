let kb = ../types/KeyBinding.dhall

let mkB = kb.makeKeyBinding

let mkWhenB = kb.makeWhenKeyBinding

let maximizeTerminal =
      [ mkB "ctrl+shift+m" "-workbench.actions.view.problems"
      , mkB "ctrl+shift+m" "workbench.action.toggleMaximizedPanel"
      ]

let nextTerminal =
      [ mkWhenB
          "ctrl+shift+j"
          "-workbench.action.search.toggleQueryDetails"
          "inSearchEditor || searchViewletFocus"
      , mkB
          "ctrl+shift+j"
          "workbench.action.terminal.focusNext"
      ]

in  maximizeTerminal # nextTerminal
