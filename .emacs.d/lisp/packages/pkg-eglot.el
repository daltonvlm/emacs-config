;;; pkg-eglot.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Eglot package configuration.

;;; Code:

(use-package eglot
  :ensure nil

  :custom
  (eglot-autoshutdown t)

  :bind
  (:map eglot-mode-map
        ("C-c e r" . eglot-rename)
        ("C-c e a" . eglot-code-actions)
        ("C-c e f" . eglot-format)
        ("C-c e o" . eglot-code-action-organize-imports)))

(provide 'pkg-eglot)

;;; pkg-eglot.el ends here
