;;; ~/.doom.d/+os.el -*- lexical-binding: t; -*-

;; Load path from zsh login shell
(when (or IS-LINUX IS-MAC)
  (defvar zsh-executable  "/usr/bin/env zsh")
  (let* ((zshpath (shell-command-to-string
                   (concat zsh-executable " -lc 'printenv PATH'")))
         (pathlst (split-string zshpath ":")))
    (setq exec-path pathlst)
    (setq eshell-path-env zshpath)
    (setenv "PATH" zshpath))

;; use zsh as default shell
(setenv "SHELL" "zsh"))

;; NVM path
(when IS-MAC
   (setq exec-path-from-shell-check-startup-files nil)
   (exec-path-from-shell-initialize))

;; delete to trash
(setq delete-by-moving-to-trash t)

;; using trash over rm
(when (executable-find "trash")
(os--trash-setup))
