let VimCommand = ./VimCommand.dhall

let VimCommandsKeyBinding = { before : List Text, commands : List VimCommand }

let VimAfterKeyBinding = { before : List Text, after : List Text }

let VimKeyBinding =
      < After : VimAfterKeyBinding | Commands : VimCommandsKeyBinding >

let makeCommandsBinding =
      λ(before : List Text) →
      λ(commands : List VimCommand) →
        VimKeyBinding.Commands { before, commands }

let makeAfterBinding =
      λ(before : List Text) →
      λ(after : List Text) →
        VimKeyBinding.After { before, after }

in  { VimKeyBinding, makeCommandsBinding, makeAfterBinding }
