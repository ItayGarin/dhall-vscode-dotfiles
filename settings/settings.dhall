let vim = ./layers/vim.dhall

let associations = ./layers/associations.dhall

let ui = ./layers/ui.dhall

let langs = ./layers/langs.dhall

in  vim ∧ associations ∧ ui ∧ langs
