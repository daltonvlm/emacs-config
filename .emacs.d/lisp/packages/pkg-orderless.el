;;; pkg-orderless.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Orderless package configuration.

;;; Code:

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides
   '((file (styles partial-completion)))))

(provide 'pkg-orderless)

;;; pkg-orderless.el ends here
