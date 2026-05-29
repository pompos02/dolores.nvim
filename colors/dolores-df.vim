lua << EOF
require("dolores").colorscheme("dolores-df")
EOF

augroup dolores_df_background
  autocmd!
  autocmd OptionSet background call <SID>dolores_df_refresh()
augroup END

function! s:dolores_df_refresh() abort
  if g:colors_name ==# 'dolores-df'
    lua require("dolores").colorscheme("dolores-df")
  endif
endfunction
