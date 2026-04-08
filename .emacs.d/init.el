;;; init.el --- -*- lexical-binding: t -*-

;;; Commentary:
;; Main initialization entry point.

;;; Code:

(let ((lisp-dir (expand-file-name "lisp" user-emacs-directory)))
  (add-to-list 'load-path (expand-file-name "core" lisp-dir))
  (add-to-list 'load-path (expand-file-name "packages" lisp-dir))
  (add-to-list 'load-path (expand-file-name "themes" lisp-dir))
  (add-to-list 'load-path (expand-file-name "langs" lisp-dir)))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(use-package use-package-ensure-system-package)

(setq use-package-always-ensure t)

(use-package system-packages)

(when init-file-debug
  (setq use-package-verbose t
        use-package-expand-minimally nil
	use-package-compute-statistics t
        debug-on-error t))

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

(mapc #'require
      '(init-core
	init-packages
	init-themes
        init-langs))

;;; init.el ends here
