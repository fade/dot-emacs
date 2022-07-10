;;;-*- lexical-binding: t; -*-
;;; init.el --- Base emacs config file
;;; Commentary:
;; Copyright (c) 2018-2021 Brian O'Reilly <fade@deepsky.com>
;;; Code:

(require 'cl-lib)
(require 'straight)

(defun straight-update-everything ()
  (interactive)
  (straight-fetch-all)
  (straight-pull-all)
  (straight-check-all))

(provide 'straight-spiffs)

;;; org-spiffs.el ends here
