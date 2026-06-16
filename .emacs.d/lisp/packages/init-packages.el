;;; init-packages.el --- -*- lexical-binding: t -*-

;;; Commentary:
;; Packages configuration entry point.

;;; Code:

;; project / navigation
(require 'pkg-project)
(require 'pkg-treemacs)

;; UI helpers
(require 'pkg-which-key)
(require 'pkg-helpful)

;; minibuffer completion stack
(require 'pkg-vertico)
(require 'pkg-orderless)
(require 'pkg-marginalia)

;; consult ecosystem
(require 'pkg-consult)

;; actions framework
(require 'pkg-embark)
(require 'pkg-embark-consult)

;; in-buffer completion UI
(require 'pkg-corfu)

;; completion extensions
;;(require 'pkg-cape)

;; LSP
(require 'pkg-eglot)

;; syntax / parsing
(require 'pkg-treesit)

;; diagnostics
(require 'pkg-flymake)

;; debugging
(require 'pkg-dape)

;; visuals
(require 'pkg-rainbow-delimiters)

(provide 'init-packages)

;;; init-packages.el ends here
