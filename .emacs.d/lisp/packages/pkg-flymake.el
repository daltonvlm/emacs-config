;;; pkg-flymake.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Flymake package configuration.

;;; Code:

(use-package flymake
  :ensure nil

  :bind
  (:map flymake-mode-map
        ("C-c ! n" . flymake-goto-next-error)
        ("C-c ! p" . flymake-goto-prev-error)
        ("C-c ! l" . flymake-show-buffer-diagnostics))

  :hook prog-mode)

(provide 'pkg-flymake)

;;; pkg-flymake.el ends here
