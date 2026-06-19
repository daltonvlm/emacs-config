;;; theme-all-the-icons.el ---  -*- lexical-binding: t; -*-

;;; Commentary:
;; all-the-icons theme configuration.

;;; Code:

(use-package all-the-icons
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :after
  (all-the-icons)

  :hook
  (dired-mode . all-the-icons-dired-mode))

(use-package all-the-icons-completion
  :after
  (marginalia all-the-icons)

  :hook
  (marginalia-mode . all-the-icons-completion-marginalia-setup)

  :init
  (all-the-icons-completion-mode))

(use-package treemacs-all-the-icons
  :after
  (treemacs all-the-icons)

  :config
  (treemacs-load-theme "all-the-icons"))

(provide 'theme-all-the-icons)

;;; theme-all-the-icons.el ends here
