;;; lang-go.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Go language configuration.

;;; Code:

(use-package go-ts-mode
  :ensure nil
  :mode ("\\.go\\'")
  :hook((go-ts-mode . eglot-ensure)
	(go-ts-mode . my-eglot-actions-on-save)
	(go-ts-mode . (lambda ()
			(setq tab-width 4)))))

(provide 'lang-go)

;;; lang-go.el ends here
