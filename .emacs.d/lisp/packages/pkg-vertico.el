;;; pkg-vertico.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Vertico package configuration.

;;; Code:

(use-package vertico
  :custom
  (vertico-cycle t)

  :init
  (vertico-mode))

(provide 'pkg-vertico)

;;; pkg-vertico.el ends here
