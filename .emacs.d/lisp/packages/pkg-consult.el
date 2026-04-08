;;; pkg-consult.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Consult package configuration.

;;; Code:

(use-package consult
  :custom
  (register-preview-delay 0)
  (register-preview-function #'consult-register-format)

  :bind
  (("C-s" . consult-line)
   ("C-x b" . consult-buffer)
   ("M-y" . consult-yank-pop)
   ("M-g i" . consult-imenu)

   ("C-c c h" . consult-history)
   ("C-c c m" . consult-mode-command)
   ("C-c c k" . consult-kmacro)
   ("C-c c g" . consult-grep)
   ("C-c c f" . consult-find)
   ("C-c c b" . consult-bookmark)))

(provide 'pkg-consult)

;;; pkg-consult.el ends here
