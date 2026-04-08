;;; pkg-corfu.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Corfu package configuration.

;;; Code:

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-preview-current nil)
  (corfu-auto-delay 0.2)
  (corfu-auto-prefix 1)

  :init
  (global-corfu-mode))

(provide 'pkg-corfu)

;;; pkg-corfu.el ends here
