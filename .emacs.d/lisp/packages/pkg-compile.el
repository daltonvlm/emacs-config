;;; pkg-compile.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Compile package configuration.

;;; Code:

(use-package compile
  :ensure nil

  :custom
  (compilation-scroll-output t)
  (compilation-always-kill t))

(provide 'pkg-compile)

;;; pkg-compile.el ends here
