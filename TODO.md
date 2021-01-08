# TODO

## keybindings.json

Collides with `ctrl+j/k` in terminal fzf (e.g after `ctrl+r`)

	{
		"key": "ctrl+j",
		"command": "-workbench.action.togglePanel"
	},
	{
		"key": "ctrl+k",
		"command": "",
		"when": "terminalFocus && terminalProcessSupported"
	}


I've also added these -

>       {
>               "key": "ctrl+shift+m",
>               "command": "-workbench.actions.view.problems"
>       },
>       {
>               "key": "ctrl+shift+m",
>               "command": "workbench.action.toggleMaximizedPanel"
>       },
>       {
>               "key": "ctrl+e",
>               "command": "-workbench.action.quickOpen",
>       },
>       {
>               "key": "alt+down",
>               "command": "-workbench.action.terminal.focusNextPane",
>               "when": "terminalFocus && terminalProcessSupported"
>       },
>       {
>               "key": "alt+right",
>               "command": "-workbench.action.terminal.focusNextPane",
>               "when": "terminalFocus && terminalProcessSupported"
>       },
>       {
>               "key": "ctrl+shift+j",
>               "command": "-workbench.action.search.toggleQueryDetails",
>               "when": "inSearchEditor || searchViewletFocus"
>       },
>       {
>               "key": "ctrl+w",
>               "command": "-extension.vim_ctrl+w",
>               "when": "editorTextFocus && vim.active && vim.use<C-w> && !inDebugRepl"
>       },
