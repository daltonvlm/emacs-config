;;; pkg-treemacs.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Treemacs package configuration.

;;; Code:

(use-package treemacs
  :bind
  (("C-c t t" . treemacs)
   ("C-c t s" . treemacs-select-window)
   ("C-c t f" . treemacs-find-file))

  :config
  (add-hook 'treemacs-select-hook #'treemacs-peek-mode))

(use-package treemacs-nerd-icons
  :after
  (treemacs nerd-icons)

  :config
  (treemacs-load-theme "nerd-icons"))

(provide 'pkg-treemacs)

;;; pkg-treemacs.el ends here
