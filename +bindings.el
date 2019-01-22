;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-


;; Unset TAB key for yasnippet
(map!
    :i "<C-O>o" #'newline-and-indent
    :v "C-=" #'er/expand-region
)
