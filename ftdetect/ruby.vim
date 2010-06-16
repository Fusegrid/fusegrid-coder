" Ruby
au BufNewFile,BufRead *.cf,*.cfm,*.cfml,*.cfc   	set filetype=cf

" Ruby on Rails
au BufNewFile,BufRead *.builder,*.rxml,*.rjs		set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake		set filetype=ruby

" Gemfile
au BufNewFile,BufRead Gemfile				set filetype=ruby

" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant		set filetype=ruby

" Rackup
au BufNewFile,BufRead *.ru				set filetype=ruby.rackup

" eRuby
au BufNewFile,BufRead *.erb,*.rhtml			set filetype=eruby
