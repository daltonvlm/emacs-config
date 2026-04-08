;;; pkg-embark-consult.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Embark-Consult package configuration.

;;; Code:

(use-package embark-consult
  :after
  (embark consult)

  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

(provide 'pkg-embark-consult)

;;; pkg-embark-consult.el ends here
