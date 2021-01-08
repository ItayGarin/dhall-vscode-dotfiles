let vim = ./settings/vim.dhall

let associations = ./settings/associations.dhall

let ui = ./settings/ui.dhall

let langs = ./settings/langs.dhall

in  vim ∧ associations ∧ ui ∧ langs
