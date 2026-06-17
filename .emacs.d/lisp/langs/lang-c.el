;;; lang-c.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; C language configuration.

;;; Code:

(defun my-c-ts-mode-setup ()
  (setq-local c-ts-mode-indent-offset 4)
  (setq-local indent-tabs-mode nil))

(use-package emacs
  :ensure nil

  :init
  (add-to-list 'major-mode-remap-alist
               '(c-mode . c-ts-mode))
  (add-to-list 'major-mode-remap-alist
               '(c++-mode . c++-ts-mode)))

(use-package c-ts-mode
  :ensure nil

  :hook
  ((c-ts-mode c++-ts-mode) . eglot-ensure)
  ((c-ts-mode c++-ts-mode) . my-c-ts-mode-setup)
  ((c-ts-mode c++-ts-mode) . my-eglot-actions-on-save)
  
  ;;  :ensure-system-package clangd)
  )

(provide 'lang-c)

;;; lang-c.el ends here
