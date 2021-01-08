let python = ./langs/python.dhall

let typescript = ./langs/typescript.dhall

let golang = ./langs/golang.dhall

let markdown = ./langs/markdown.dhall

let json = ./langs/json.dhall

in  python ∧ typescript ∧ golang ∧ markdown ∧ json
