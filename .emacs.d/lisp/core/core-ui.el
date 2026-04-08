;;; core-ui.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; UI settings.

;;; Code:

(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)

(global-hl-line-mode 1)

(provide 'core-ui)

;;; core-ui.el ends here
