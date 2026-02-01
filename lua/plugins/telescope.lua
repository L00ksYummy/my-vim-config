
return {
	-- telescope plugin --
	'nvim-telescope/telescope.nvim', version = '0.1.9',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

	},

    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim','nvim-lua/plenary.nvim'},

    'nvim-tree/nvim-web-devicons'
}
