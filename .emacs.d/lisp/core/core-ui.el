;;; core-ui.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; UI settings.

;;; Code:

(use-package emacs
  :ensure nil

  :custom
  (display-line-numbers-type 'relative)

  :hook ((prog-mode . display-line-numbers-mode)
         (text-mode . display-line-numbers-mode))

  :init
  (global-hl-line-mode 1))

(provide 'core-ui)

;;; core-ui.el ends here
