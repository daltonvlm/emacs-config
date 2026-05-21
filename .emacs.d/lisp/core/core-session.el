;;; core-session.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Session settings.

;;; Code:
;;; Emacs server.

(require 'server)

(unless (server-running-p)
  (server-start))

(savehist-mode 1)

(desktop-save-mode 1)
(setq desktop-modes-not-to-save
      (remove 'info-mode desktop-modes-not-to-save))

(provide 'core-session)

;;; core-session.el ends here
