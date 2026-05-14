;;; pkg-project.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Project package configuration.

;;; Code:

(use-package project
  :ensure nil

  :custom
  (project-switch-commands
   '((project-find-file "Find file")
     (project-find-dir "Find dir")
     (project-eshell "Eshell")))

  (compilation-scroll-output t)

  (compilation-always-kill t))

(provide 'pkg-project)

;;; pkg-project.el ends here
