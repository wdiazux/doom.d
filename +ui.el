;;; ~/.doom.d/+ui.el -*- lexical-binding: t; -*-

;; Theme
(setq doom-theme 'doom-dracula)

;; Font
(setq doom-font (font-spec :family "Iosevka"
                           :size 15
                           :powerline-scale 1.1))

;; Show trailing white spaces
(setq show-trailing-whitespace t)

;; Disable trailing whitespaces in the minibuffer
(add-hook! '(minibuffer-setup-hook doom-popup-mode-hook)
(setq-local show-trailing-whitespace nil))
