augroup LspFormatting
    autocmd! * <buffer>
    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
    autocmd BufWritePost <buffer> silent !./bootstrap.sh
augroup END
