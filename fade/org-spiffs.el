;;;-*- lexical-binding: t; -*-
;;; init.el --- Base emacs config file
;;; Commentary:
;; Copyright (c) 2018-2021 Brian O'Reilly <fade@deepsky.com>
;;; Code:

(require 'cl-lib)

;;; taken from https://github.com/skx/dotfiles redefined to ameliorate
;;; the assignment to uninitialised variables. Also, #'goto-line is
;;; for interactive functions only. recast in terms of #'goto-char

(cl-defun fade/org-global-prop (name)
  "Given a property NAME like 'AUTHOR', 'TITLE', &etc. return the associated value."
  (save-excursion
    (outline-show-all)
    (goto-char (point-min))
    (if (re-search-forward (concat "^#\\+" name ":") nil t)
        (let (start end)
          (setq start (point))
          (re-search-forward "$")
          (setq end (point))
          (string-trim (buffer-substring-no-properties start end))))))

;; that properties function can be used specifically in org files to
;; do various things, like renaming the (convoluted, unfriendly)
;; buffer names of org-roam notes. to whit:

(cl-defun fade/org-mode-rename-buffer ()
  (if (fade/org-global-prop "TITLE")
      (rename-buffer (fade/org-global-prop "TITLE"))))

;;; now in your init file, attach the renaming function to the 'org-mode-hook

(provide 'org-spiffs)

;;; org-spiffs.el ends here
