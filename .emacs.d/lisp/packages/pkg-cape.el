;;; pkg-cape.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Cape package configuration.

;;; Code:

(use-package cape
  :bind
  ("C-c p" . cape-prefix-map)
  :init
  (add-to-list 'completion-at-point-functions #'cape-elisp-symbol t)
  (add-to-list 'completion-at-point-functions #'cape-elisp-block t)
  (add-to-list 'completion-at-point-functions #'cape-file t)
  (add-to-list 'completion-at-point-functions #'cape-keyword t)
  (add-to-list 'completion-at-point-functions #'cape-history t)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev t))

(provide 'pkg-cape)

;;; pkg-cape.el ends here
