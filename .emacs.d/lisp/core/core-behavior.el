;;; core-behavior.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Behavior settings.

;;; Code:

(defun insert-line-above ()
  (interactive)
  (beginning-of-line)
  (open-line 1)
  (indent-according-to-mode))

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
  (("C-/" . undo-only)
   ("C-c o" . insert-line-above))

  :hook
  (help-fns-describe-function-functions
   . shortdoc-help-fns-examples-function)

  :init
  (setenv "EDITOR" "emacsclient -c")
  (setenv "GIT_EDITOR" "emacsclient -c"))

(use-package dired
  :ensure nil

  :custom
  (dired-kill-when-opening-new-dired-buffer t))

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
