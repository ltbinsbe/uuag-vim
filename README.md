# uuag-vim

Syntax highlighting for UUAG (Utrecht University Attribute Grammar) in VIM.

UUAG Manual: http://foswiki.cs.uu.nl/foswiki/HUT/AttributeGrammarManual

* copy uuag.vim to syntax/ folder of vim distribution (e.g. ~/.vim/syntax/)
* create the file ftdetect/uuag.vim with content:
au BufRead,BufNewFile \*.ag set filetype=uuag

Known problems:
* No indentation sensitivity to recognise Haskell regions on the right-hand side of a attribute definition.

Rules for Haskell regions:
* Everything between { and }
* Everything following a = and \n\n (2 line breaks)

# luuag-vim

Syntax highlighting for literate UUAG files

* copy luuag.vim to syntax/ folder of vim distribution (e.g. ~/.vim/syntax/)
* create the file ftdect/uuag.vim with content:
au BufRead,BufNewFile \*.lag set filetype=luuag

(Disclaimer) The luuag.vim file is a modified copy of version 1.04 of the the lhaskell.vim file for syntax highlighting of literate Haskell files written by Arthur van Leeuwen
