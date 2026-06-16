;;; pkg-dape.el --- -*- lexical-binding: t -*-

;;; Commentary:
;; DAP (Debug Adapter Protocol) support via dape.

;;; Code:

(use-package dape
  :preface
  (setopt dape-buffer-window-arrangement 'right)

  :bind
  (:map dape-mode-map
        ("C-c d d" . dape-debug)
        ("C-c d c" . dape-continue)
        ("C-c d s" . dape-step-in)
        ("C-c d n" . dape-next)
        ("C-c d o" . dape-step-out)
        ("C-c d r" . dape-repl)))

(provide 'pkg-dape)

;;; pkg-dape.el ends here
