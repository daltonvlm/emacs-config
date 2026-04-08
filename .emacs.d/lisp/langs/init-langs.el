;;; init-langs.el --- -*- lexical-binding: t -*-

;;; Commentary:
;; Languages configuration entry point.

;;; Code:

(defun my-format-buffer ()
  (eglot-format-buffer))

(defun my-organize-imports ()
  (call-interactively #'eglot-code-action-organize-imports))

(defun my-eglot-actions-on-save ()
  (add-hook 'before-save-hook
            (lambda ()
              (my-format-buffer)
	      (my-organize-imports))
            nil t))

(add-hook 'prog-mode-hook #'subword-mode)

(require 'lang-c)
(require 'lang-go)

(provide 'init-langs)

;;; init-langs.el ends here
