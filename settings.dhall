let vim = ./settings/vim.dhall

let vspacecodeDefaults = ./settings/vspacecode-defaults.dhall

let associations = ./settings/associations.dhall

let ui = ./settings/ui.dhall

in  vim ∧ vspacecodeDefaults ∧ associations ∧ ui
