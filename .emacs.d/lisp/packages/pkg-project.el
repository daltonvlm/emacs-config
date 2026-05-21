;;; pkg-project.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Project package configuration.

;;; Code:

(use-package project
  :ensure nil

  :bind
  ("M-<return>" . my/project-recompile)

  :custom
  (project-switch-commands
   '((project-find-file "Find file")
     (project-find-dir "Find dir")
     (project-eshell "Eshell")))

  (compilation-scroll-output t)

  (compilation-always-kill t)

  :config
  (defun my/project-recompile ()
    "Recompile the current project without confirmation."
    (interactive)
    (let ((default-directory
	   (project-root (project-current t))))
      (recompile))))

(provide 'pkg-project)

;;; pkg-project.el ends here
