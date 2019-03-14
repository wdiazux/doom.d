;;; ~/.doom.d/+os.el -*- lexical-binding: t; -*-

;; delete to trash
(setq delete-by-moving-to-trash t)

;; using trash over rm
(when (executable-find "trash")
(os--trash-setup))
