;;; pkg-eglot.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Eglot package configuration.

;;; Code:

(defun my/eglot-capf-setup ()
  (setq-local completion-at-point-functions
	      (list
	       (cape-capf-super
		#'cape-file
		#'cape-dabbrev
		#'eglot-completion-at-point))))

(use-package eglot
  :ensure nil

  :after cape
  
  :custom
  (eglot-autoshutdown t)

  :bind
  (:map eglot-mode-map
        ("C-c e r" . eglot-rename)
        ("C-c e a" . eglot-code-actions)
        ("C-c e f" . eglot-format)
        ("C-c e o" . eglot-code-action-organize-imports))

  :hook
  (eglot-managed-mode . my/eglot-capf-setup))


(provide 'pkg-eglot)

;;; pkg-eglot.el ends here
