;;; core-session.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Session settings.

;;; Code:
;;; Emacs server.

(use-package server
  :ensure nil

  :demand t

  :config
  (unless (server-running-p)
    (server-start)))

(use-package savehist
  :ensure nil

  :demand t

  :config
  (savehist-mode 1))

(use-package desktop
  :ensure nil

  :demand t

  :config
  (desktop-save-mode 1)
  (setq desktop-modes-not-to-save
        (remove 'info-mode desktop-modes-not-to-save)))

(provide 'core-session)

;;; core-session.el ends here
