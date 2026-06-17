;;; pkg-project.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Project package configuration.

;;; Code:

(use-package project
  :ensure nil

  :bind
  (("C-<return>" . project-recompile)
   ("M-<return>" . kill-compilation)
   :map project-prefix-map
   ("b" . consult-project-buffer)))

(provide 'pkg-project)

;;; pkg-project.el ends here
