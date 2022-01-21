set ruler
set nu
set noswapfile
set nobackup
"set foldenable
"set foldmethod=syntax
"set foldcolumn=0
"set foldlevel=1
"set foldclose=all " 璁剧疆涓鸿嚜鍔ㄥ叧闂姌鍙?
set autoindent
set showcmd
set paste
set laststatus=2 
set fileformat=unix
set tags+=/localdisk/working/cyang9529/pleiades/hg/pleiades_application/tags
set tags+=/localdisk/working/cyang9529/pleiades/hg/pleiades_platform/tags
cs add /localdisk/working/cyang9529/pleiades/hg/pleiades_application/cscope.out /localdisk/working/cyang9529/pleiades/hg/pleiades_application
cs add /localdisk/working/cyang9529/pleiades/hg/BT/cscope.out
cs add /localdisk/working/cyang9529/pleiades/hg/aom/aom/cscope.out /localdisk/working/cyang9529/pleiades/hg/aom/aom/
cs add /localdisk/working/cyang9529/pleiades/hg/pleiades_tools/cscope.out
cs add /localdisk/working/cyang9529/pleiades/hg/pleiades_nexgen/cscope.out /localdisk/working/cyang9529/pleiades/hg/pleiades_nexgen
cs add /localdisk/working/cyang9529/pleiades/hg/pleiades_platform/meta-ale/recipes-ale/cscope.out /localdisk/working/cyang9529/pleiades/hg/pleiades_platform/meta-ale/recipes-ale
cs add /localdisk/working/cyang9529/pleiades/hg/pleiades_platform/meta-ale/recipes-ale/pic/cscope.out /localdisk/working/cyang9529/pleiades/hg/pleiades_platform/meta-ale/recipes-ale/pic
set path=/localdisk/working/cyang9529/pleiades/hg/pleiades_application/**


"cs add /localdisk/working/cyang9529/80x8ee/hg/8018_platform/platform_build/bitbake_build/tmp/work/armv5te-wrs-linux-gnueabi/strongswan-5.7.2-r0/strongswan-5.7.2/cscope.out /localdisk/working/cyang9529/80x8ee/hg/8018_platform/platform_build/bitbake_build/tmp/work/armv5te-wrs-linux-gnueabi/strongswan-5.7.2-r0/strongswan-5.7.2
"cs add /localdisk/working/cyang9529/80x8ee/hg/8018_platform/cscope.out /localdisk/working/cyang9529/80x8ee/hg/8018_platform
"cs add /localdisk/working/cyang9529/80x8ee/hg/8018_application/cscope.out /localdisk/working/cyang9529/80x8ee/hg/8018_application
"cs add /localdisk/working/cyang9529/80x8ee/hg/8018_nexgen/cscope.out /localdisk/working/cyang9529/80x8ee/hg/8018_nexgen

"set path=/localdisk/working/cyang9529/80x8ee/hg/8018_application/**
map <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
map <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
map <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
map <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
map <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
map <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
map <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
map <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>


syntax on
filetype off
let Tlist_Ctags_Cmd="/usr/bin/ctags"
set nocompatible
set rtp+=$HOME/.vim/bundle/Vundle.vim
set tags=./tags
call vundle#begin()
Plugin 'preservim/nerdtree'
call vundle#end()
filetype plugin indent on

let g:nerdtree_tabs_open_on_console_startup=1
map <F3> :NERDTreeToggle<CR>

map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 

