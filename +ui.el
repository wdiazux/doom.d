;;; ~/.doom.d/+ui.el -*- lexical-binding: t; -*-

;; Theme
(setq doom-theme 'doom-dracula)

;; Font
(setq doom-font (font-spec :family "Iosevka"
                           :size 15
                           :powerline-scale 1.1))

;; Dash highlighting
(after! dash (dash-enable-font-lock))
