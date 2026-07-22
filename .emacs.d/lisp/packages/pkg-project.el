;;; pkg-project.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Project package configuration.

;;; Code:

(defun my/project-recompile-save-current-buffer (&rest _)
  "Save the current buffer before calling `project-recompile`.
Only save when the buffer is visiting a file and has unsaved changes."
  (when (and (buffer-file-name)
             (buffer-modified-p))
    (save-buffer)))

(use-package project
  :ensure nil

  :bind
  (("C-<return>" . project-recompile)
   ("M-RET" . kill-compilation)
   :map project-prefix-map
   ("b" . consult-project-buffer))

  :config
  (advice-add 'project-recompile :before
              #'my/project-recompile-save-current-buffer))

(provide 'pkg-project)

;;; pkg-project.el ends here
