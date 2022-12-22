augroup LspFormatting
    autocmd! * <buffer>
    autocmd BufWritePre <buffer> lua vim.lsp.buf.format({timeout_ms=5000})
    autocmd BufWritePost <buffer> silent !./bootstrap.sh
augroup END
