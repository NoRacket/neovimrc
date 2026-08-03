return {
    "lervag/vimtex",
    lazy = false, -- Lädt direkt, nicht erst bei Bedarf
    --ft = { "tex", "plaintex", "latex" },
	--filetype plugin indent on,
    init = function()
        -- Kompilierung mit latexmk in ./build
        vim.g.vimtex_compiler_latexmk = {
            continuous = 1,
            out_dir = "out",
            aux_dir = "out",
            options = {
                "-shell-escape",
                "-file-line-error",
                "-synctex=1",
                "-interaction=nonstopmode",
                -- "-outdir=build",
            },
        }

        -- Verwende Zathura als PDF-Viewer
        -- vim.g.vimtex_view_general_viewer = 'evince'
        vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_fold_enabled = true
		vim.g.vimtex_format_enabled= true
    end,
}
