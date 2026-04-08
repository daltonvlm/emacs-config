;;; pkg-embark.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Embark package configuration.

;;; Code:

(use-package embark
  :bind
  (("C-." . embark-act)
   ("C-;" . embark-dwim)
   ("C-h B" . embark-bindings))

  :init
  ;; prefix help replaced by Embark
  (setq prefix-help-command #'embark-prefix-help-command))

(provide 'pkg-embark)

;;; pkg-embark.el ends here
