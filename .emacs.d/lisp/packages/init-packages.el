;;; init-packages.el --- -*- lexical-binding: t -*-

;;; Commentary:
;; Packages configuration entry point.

;;; Code:

;; consult ecosystem
(require 'pkg-consult)

;; minibuffer completion stack
(require 'pkg-vertico)
(require 'pkg-orderless)
(require 'pkg-marginalia)

;; project / build / navigation
(require 'pkg-project)
(require 'pkg-compile)
(require 'pkg-treemacs)

;; UI helpers
(require 'pkg-which-key)
(require 'pkg-helpful)

;; visuals
(require 'pkg-rainbow-delimiters)

;; actions framework
(require 'pkg-embark)
(require 'pkg-embark-consult)

;; in-buffer completion UI
(require 'pkg-corfu)

;; syntax / parsing
(require 'pkg-treesit)

;; completion extensions
(require 'pkg-cape)

;; LSP
(require 'pkg-eglot)

;; diagnostics
(require 'pkg-flymake)

;; debugging
(require 'pkg-dape)

(provide 'init-packages)

;;; init-packages.el ends here
