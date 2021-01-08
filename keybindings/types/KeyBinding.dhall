-- For Example
-- ===========
--
-- {
--     "key": "ctrl+w",
--     "command": "-extension.vim_ctrl+w",
--     "when": "editorTextFocus && vim.active && vim.use<C-w> && !inDebugRepl"
-- }
--
let KeyBinding = { key : Text, command : Text, when : Optional Text }

let makeWhenKeyBinding =
      λ(key : Text) →
      λ(command : Text) →
      λ(when : Text) →
        { key, command, when = Some when } : KeyBinding

let makeKeyBinding =
      λ(key : Text) →
      λ(command : Text) →
        { key, command, when = None Text } : KeyBinding

in  { KeyBinding, makeKeyBinding, makeWhenKeyBinding }
