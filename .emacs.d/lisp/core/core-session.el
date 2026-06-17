;;; core-session.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Session settings.

;;; Code:
;;; Emacs server.

(use-package server
  :ensure nil

  :config
  (unless (server-running-p)
    (server-start)))

(use-package savehist
  :ensure nil

  :init
  (savehist-mode 1))

(use-package desktop
  :ensure nil

  :config
  (setq desktop-modes-not-to-save
        (remove 'info-mode desktop-modes-not-to-save))
  (desktop-save-mode 1))

(provide 'core-session)

;;; core-session.el ends here
