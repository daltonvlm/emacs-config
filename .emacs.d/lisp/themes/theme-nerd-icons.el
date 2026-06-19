;;; theme-nerd-icons.el ---  -*- lexical-binding: t; -*-

;;; Commentary:
;; Nerd-icons theme configuration.

;;; Code:

(use-package nerd-icons
  :if (display-graphic-p))

(use-package nerd-icons-dired
  :after
  (nerd-icons)

  :hook
  (dired-mode . nerd-icons-dired-mode))

(use-package nerd-icons-completion
  :after
  (marginalia nerd-icons)

  :hook
  (marginalia-mode . nerd-icons-completion-marginalia-setup)

  :init
  (nerd-icons-completion-mode))

(use-package nerd-icons-corfu
  :after corfu nerd-icons

  :config
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

(use-package treemacs-nerd-icons
  :after
  (treemacs nerd-icons)

  :config
  (treemacs-load-theme "nerd-icons"))

(provide 'theme-nerd-icons)

;;; theme-nerd-icons.el ends here
