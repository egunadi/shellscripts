# chatGPT conversation link 

- https://chatgpt.com/share/67df3a52-47dc-800e-baa3-fea8a8eff339

# tab management

## next buffer

]b 

or, longer
:tabnext

## previous buffer

[b

or, longer
:tabprev

## list all open buffers 

space + b

or, longer
:Telescope buffers

## new tab

:tabnew

# nvim-tree

## open file explorer 

space + e 

## toggle (expand/collapse) folder

(Enter)

## open folder in explorer

o

## close file explorer

(esc)

# quit

## close current buffer

:bd

## quit completely if there are no unsaved changes

:qa

## force quit (ignores unsaved changes)

:qa!

## save and quit all buffers

:xa

### "x" only writes when there are changes. to save regardless of changes, use

:wqa

# terminology

- b: buffer or window
- a (all): apply to all windows
- d: delete or close window (not the app)
- x: exit smartly
- q (quit): close, which closes the entire app is there is only one file left
- w (write): save

# paste

## paste from system clipboard

:w <C-r>+

- Hold Control
- Press r
- Then press +

### jetbrains fleet

:set clipboard+=unnamed

or

"+y

# layout

## vertical split

:vsplit
:vsplit filename.txt

shortcut is :vsp

## horizontal split

:split
:split filename.txt

shortcut is :sp

# navigate splits

ctrl + w + (h/l/k/j)

# syntax highlighting

## by filetype

:set filetype=python
:set filetype=html
:set filetype=lua

# compare files

## vertical compare

:vert diffsplit file2.txt

## horizontal compare

:diffsplit file2.txt


