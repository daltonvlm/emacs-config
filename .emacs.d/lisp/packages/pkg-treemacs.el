;;; pkg-treemacs.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Treemacs package configuration.

;;; Code:

(use-package treemacs
  :bind
  (("C-c t t" . treemacs)
   ("C-c t s" . treemacs-select-window)
   ("C-c t f" . treemacs-find-file)
   ("C-c t ." . treemacs-add-and-display-current-project-exclusively))

  :hook
  (treemacs-mode . treemacs-project-follow-mode))

(provide 'pkg-treemacs)

;;; pkg-treemacs.el ends here
