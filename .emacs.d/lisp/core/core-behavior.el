;;; core-behavior.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Behavior settings.

;;; Code:

(setq inhibit-startup-screen t)

(setq make-backup-files nil)

(repeat-mode 1)
(setq repeat-exit-key (kbd "ESC"))

(setq help-window-select t)
(setq help-window-keep-selected t)
(add-hook 'help-fns-describe-function-functions
          #'shortdoc-help-fns-examples-function)

(setq dictionary-use-single-buffer t)

(setq visible-bell t)

(electric-pair-mode 1)

(provide 'core-behavior)

;;; core-behavior.el ends here
