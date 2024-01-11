" Set tab and indent-related options
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set ignorecase
set smartcase

" Disable GUI cursor
set guicursor=

" Enable smart indenting
set smartindent

" Disable line wrapping
set nowrap

" Use system clipboard
set clipboard=unnamedplus

" Highlight text on yank
augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup = "IncSearch", timeout = 40})
augroup END

nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
