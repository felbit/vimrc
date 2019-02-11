"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP
" 
" At Sandstorm I need to write PHP in Flow and NEOS projects and I
" personally find Intellj IDEA a good tool, but let's see how far
" we get with (Neo)Vim as substitute.
"
" NEOS Fusion support (WIP!)
"au BufNewFile,BufRead *.fusion set filetype=fusion

" PHP style fix with php-cs-fixer
" for version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules
"let g:php_cs_fixer_cache = '.php_cs.cache' " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

" Fix on save!
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" PHP Snippets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" PHP7
let g:ultisnips_php_scalar_types = 1

