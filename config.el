;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; General
(setq user-mail-address "wdiazux@gmail.com"
      user-full-name "William Diaz")

;; Remove the request from killing emacs
(setq confirm-kill-emacs nil)

;; Start maximized
(setq frame-resize-pixelwise t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; wrap lines
(global-visual-line-mode t)

;;Show all the icons in the modeline
(setq doom-modeline-icon t)
;; Don’t compact font caches during GC - for performance
(setq inhibit-compacting-font-caches t)

;; CSS
(setq web-mode-css-indent-offset 2)
(setq css-indent-offset 2)

;; Prettier
(def-package! prettier-js
  :commands (prettier-js-mode)
  :init
  (defun setup-prettier-js ()
    "Sets up arguments and the mode."
    (interactive)
    (setq prettier-js-args '("--single-quote"))

    (prettier-js-mode))
  (add-hook! (typescript-mode
              js2-mode)
    #'setup-prettier-js)
(add-hook! web-mode (enable-minor-mode '("\\.tsx\\'" . setup-prettier-js))))

;; Typescript
(after! typescript-mode
  (add-hook 'typescript-mode-hook #'flycheck-mode))

;; Javascript
(after! js2-mode
  ;; use eslintd-fix so when i save it fixes dumb stuff
  (add-hook 'js2-mode-hook #'eslintd-fix-mode))

;; Web-mode
(after! web-mode
(add-hook 'web-mode-hook #'flycheck-mode))

;; Twitter
(after! twittering-mode
  (setq twittering-icon-mode t))

(load! "+ui")
(load! "+os")
(load! "+completion")
(load! "+bindings")
(load! "+ranger")
(load! "+nvm")
