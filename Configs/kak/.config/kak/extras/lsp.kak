hook global BufSetOption filetype=arduino %{
	set-option buffer lsp_servers %{
		[arduino-language-server]
		root_globs = [".git", ".hg"]
	}
}
