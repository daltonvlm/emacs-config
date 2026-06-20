;;; core-behavior.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Behavior settings.

;;; Code:

(use-package emacs
  :ensure nil

  :custom
  (inhibit-startup-screen t)
  (make-backup-files nil)
  (help-window-select t)
  (help-window-keep-selected t)
  (visible-bell t)
  (enable-recursive-minibuffers t)

  :bind
  ("C-/" . undo-only)

  :hook
  (help-fns-describe-function-functions
   . shortdoc-help-fns-examples-function)

  :init
  (setenv "EDITOR" "emacsclient -c")
  (setenv "GIT_EDITOR" "emacsclient -c"))

(use-package repeat
  :ensure nil

  :custom
  (repeat-exit-key (kbd "ESC"))

  :init
  (repeat-mode 1))

(use-package elec-pair
  :ensure nil

  :init
  (electric-pair-mode 1))

(use-package dictionary
  :ensure nil

  :custom
  (dictionary-use-single-buffer t))


(provide 'core-behavior)

;;; core-behavior.el ends here
