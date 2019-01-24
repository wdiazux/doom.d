;;; ~/.doom.d/+completion.el -*- lexical-binding: t; -*-

(require 'company)
(after! company
  (setq company-idle-delay 0.2
        company-echo-delay 0.0
        company-show-numbers t
        company-minimum-prefix-length 3
        company-tooltip-flip-when-above t
        company-dabbrev-downcase nil))
