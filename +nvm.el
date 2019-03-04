;;; ~/.doom.d/+nvm.el -*- lexical-binding: t; -*-

;; Use `nvm' inside emacs
(require 'nvm)
(nvm-use-for)
(setq exec-path (split-string (getenv "PATH") path-separator))
