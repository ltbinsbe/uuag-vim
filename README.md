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
