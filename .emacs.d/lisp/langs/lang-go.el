;;; lang-go.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Go language configuration.

;;; Code:

(defun my-go-ts-mode-setup ()
  (setq-local tab-width 4))

(use-package go-ts-mode
  :ensure nil

  :custom
  (go-ts-mode-indent-offset 4)

  :mode "\\.go\\'"

  :hook
  ((go-ts-mode . eglot-ensure)
   (go-ts-mode . my-eglot-actions-on-save)
   (go-ts-mode . my-go-ts-mode-setup)))

(provide 'lang-go)

;;; lang-go.el ends here
