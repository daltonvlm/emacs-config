;;; core-behavior.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Behavior settings.

;;; Code:

(use-package emacs
  :ensure nil

  :init
  (setenv "EDITOR" "emacsclient -c")
  (setenv "GIT_EDITOR" "emacsclient -c")

  :config
  (setq inhibit-startup-screen t
        make-backup-files nil
        help-window-select t
        help-window-keep-selected t
        dictionary-use-single-buffer t
        visible-bell t)

  (repeat-mode 1)
  (setq repeat-exit-key (kbd "ESC"))

  (add-hook 'help-fns-describe-function-functions
            #'shortdoc-help-fns-examples-function)

  (electric-pair-mode 1)

  (global-set-key (kbd "C-z") #'undo-only))

(provide 'core-behavior)

;;; core-behavior.el ends here
