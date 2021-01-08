let kb = ../types/KeyBinding.dhall

let KeyBinding = kb.KeyBinding

let defaults
    : List KeyBinding
    = [ { key = "space"
        , command = "vspacecode.space"
        , when = Some
            "activeEditorGroupEmpty && focusedView == '' && !whichkeyActive && !inputFocus"
        }
      , { key = "tab"
        , command = "extension.vim_tab"
        , when = Some
            "editorFocus && vim.active && !inDebugRepl && vim.mode != 'Insert' && editorLangId != 'magit'"
        }
      , { key = "tab"
        , command = "-extension.vim_tab"
        , when = Some
            "editorFocus && vim.active && !inDebugRepl && vim.mode != 'Insert'"
        }
      , { key = "x"
        , command = "magit.discard-at-point"
        , when = Some
            "editorTextFocus && editorLangId == 'magit' && vim.mode =~ /^(?!SearchInProgressMode|CommandlineInProgress).*\$/"
        }
      , { key = "k", command = "-magit.discard-at-point", when = None Text }
      , { key = "-"
        , command = "magit.reverse-at-point"
        , when = Some
            "editorTextFocus && editorLangId == 'magit' && vim.mode =~ /^(?!SearchInProgressMode|CommandlineInProgress).*\$/"
        }
      , { key = "v", command = "-magit.reverse-at-point", when = None Text }
      , { key = "shift+-"
        , command = "magit.reverting"
        , when = Some
            "editorTextFocus && editorLangId == 'magit' && vim.mode =~ /^(?!SearchInProgressMode|CommandlineInProgress).*\$/"
        }
      , { key = "shift+v", command = "-magit.reverting", when = None Text }
      , { key = "shift+o"
        , command = "magit.resetting"
        , when = Some
            "editorTextFocus && editorLangId == 'magit' && vim.mode =~ /^(?!SearchInProgressMode|CommandlineInProgress).*\$/"
        }
      , { key = "shift+x", command = "-magit.resetting", when = None Text }
      , { key = "x", command = "-magit.reset-mixed", when = None Text }
      , { key = "ctrl+u x", command = "-magit.reset-hard", when = None Text }
      , { key = "y", command = "-magit.show-refs", when = None Text }
      , { key = "y"
        , command = "vspacecode.showMagitRefMenu"
        , when = Some
            "editorTextFocus && editorLangId == 'magit' && vim.mode == 'Normal'"
        }
      , { key = "ctrl+j"
        , command = "workbench.action.quickOpenSelectNext"
        , when = Some "inQuickOpen"
        }
      , { key = "ctrl+k"
        , command = "workbench.action.quickOpenSelectPrevious"
        , when = Some "inQuickOpen"
        }
      , { key = "ctrl+j"
        , command = "selectNextSuggestion"
        , when = Some
            "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
        }
      , { key = "ctrl+k"
        , command = "selectPrevSuggestion"
        , when = Some
            "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
        }
      , { key = "ctrl+l"
        , command = "acceptSelectedSuggestion"
        , when = Some
            "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
        }
      , { key = "ctrl+j"
        , command = "showNextParameterHint"
        , when = Some
            "editorFocus && parameterHintsMultipleSignatures && parameterHintsVisible"
        }
      , { key = "ctrl+k"
        , command = "showPrevParameterHint"
        , when = Some
            "editorFocus && parameterHintsMultipleSignatures && parameterHintsVisible"
        }
      , { key = "ctrl+h"
        , command = "file-browser.stepOut"
        , when = Some "inFileBrowser"
        }
      , { key = "ctrl+l"
        , command = "file-browser.stepIn"
        , when = Some "inFileBrowser"
        }
      ]

in  defaults
