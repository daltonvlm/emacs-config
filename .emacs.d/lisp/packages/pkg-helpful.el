;;; pkg-helpful.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Helpful package configuration.

;;; Code:

(use-package helpful
  :bind
  (("C-h f" . helpful-callable)
   ("C-h v" . helpful-variable)
   ("C-h k" . helpful-key)
   ("C-h x" . helpful-command)
   ("C-c C-d" . helpful-at-point)))

(provide 'pkg-helpful)

;;; pkg-helpful.el ends here
