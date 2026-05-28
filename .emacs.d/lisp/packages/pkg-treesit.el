;;; pkg-treesit.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;; Treesit package configuration.

;;; Code:

(setq treesit-language-source-alist
      '((c      "https://github.com/tree-sitter/tree-sitter-c")
        (cpp    "https://github.com/tree-sitter/tree-sitter-cpp")
        (python "https://github.com/tree-sitter/tree-sitter-python")
        (rust   "https://github.com/tree-sitter/tree-sitter-rust")
        (go     "https://github.com/tree-sitter/tree-sitter-go")
	(gomod  "https://github.com/camdencheek/tree-sitter-go-mod")
	(json "https://github.com/tree-sitter/tree-sitter-json")))

(dolist (entry treesit-language-source-alist)
  (let ((lang (car entry)))
    (unless (treesit-language-available-p lang)
      (treesit-install-language-grammar lang))))

(provide 'pkg-treesit)

;;; pkg-treesit.el ends here
