" Vim filetype plugin
" Language:		Ruby
" Maintainer:		Gavin Sinclair <gsinclair at gmail.com>
" Info:			$Id: ruby.vim,v 1.39 2007/05/06 16:38:40 tpope Exp $
" URL:			http://vim-ruby.rubyforge.org
" Anon CVS:		See above site
" Release Coordinator:  Doug Kearns <dougkearns@gmail.com>
" ----------------------------------------------------------------------------
"
" Original matchit support thanks to Ned Konz.  See his ftplugin/ruby.vim at
"   http://bike-nomad.com/vim/ruby.vim.
" ----------------------------------------------------------------------------

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

if exists("loaded_matchit")
    let b:match_words = '<cfif\>.\{-}>\|<cfif\>.\{-}$:'
            \ . '<cfelseif\>.\{-}>\|<cfelseif\>.\{-}$:'
            \ . '<cfelse\>.\{-}>\|<cfelse\>.\{-}$:'
            \ . '<\/cfif>,'
        \ . '<cfloop\>.\{-}>\|<cfloop\>.\{-}$:'
            \ . '<\/cfloop\>.\{-}>,'
        \ . '<cfoutput\>.\{-}>\|<cfoutput\>.\{-}$:'
            \ . '<\/cfoutput\>.\{-}>,'
        \ . '<cftimer\>.\{-}>\|<cftimer\>.\{-}$:'
            \ . '<\/cftimer\>.\{-}>,'
        \ . '<!---:--->,'
        \ . '<cfquery\>.\{-}>\|<cfquery\>.\{-}$:<\/cfquery\>.\{-}>,'
        \ . '<cfscript>:<\/cfscript>'
    " Since we are counting things outside of comments only,
    " It is important we account comments accurately or match_words
    " will be wrong and therefore useless
    syntax sync fromstart

endif " exists("loaded_matchit")

"
" Instructions for enabling "matchit" support:
"
" 1. Look for the latest "matchit" plugin at
"
"         http://www.vim.org/scripts/script.php?script_id=39
"
"    It is also packaged with Vim, in the $VIMRUNTIME/macros directory.
"
" 2. Copy "matchit.txt" into a "doc" directory (e.g. $HOME/.vim/doc).
"
" 3. Copy "matchit.vim" into a "plugin" directory (e.g. $HOME/.vim/plugin).
"
" 4. Ensure this file (ftplugin/ruby.vim) is installed.
"
" 5. Ensure you have this line in your $HOME/.vimrc:
"         filetype plugin on
"
" 6. Restart Vim and create the matchit documentation:
"
"         :helptags ~/.vim/doc
"
"    Now you can do ":help matchit", and you should be able to use "%" on Ruby
"    keywords.  Try ":echo b:match_words" to be sure.
"
" Thanks to Mark J. Reed for the instructions.  See ":help vimrc" for the
" locations of plugin directories, etc., as there are several options, and it
" differs on Windows.  Email gsinclair@soyabean.com.au if you need help.
"

" vim: nowrap sw=2 sts=2 ts=8 ff=unix:
