;;; pkg-dape.el --- -*- lexical-binding: t -*-

;;; Commentary:
;; DAP (Debug Adapter Protocol) support via dape.

;;; Code:

(use-package dape
  :preface
  (setopt dape-buffer-window-arrangement 'right)

  :hook
  (kill-emacs . dape-breakpoint-save)
  (after-init . dape-breakpoint-load))

(provide 'pkg-dape)

;;; pkg-dape.el ends here
