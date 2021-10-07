;;; init.el --- Base emacs config file -*- lexical-binding: t; -*-
;; Copyright (c) 2018-2021 Brian O'Reilly <fade@deepsky.com>

(setq gc-cons-threshold 400000000)

;;; Set up package
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/"))) ;;("org"   . "https://orgmode.org/elpa/")

(package-initialize)

;;; Bootstrap use-package

(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))


;; From use-package README

(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-verbose t)


;; sometimes when I visit an org file, org-mode does not start. moving
;; mode installation here, to test whether it is a load-time phasing
;; issue. (it was, leave this as is.)

(require 'org-spiffs nil t) ;; rename org-roam buffers to something sane.

(defun efs/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (visual-line-mode 1))

(use-package org
  :hook (org-mode . efs/org-mode-setup)
  :ensure org
  :custom
  (org-ellipsis " ▾")
  (org-agenda-start-with-log-mode t)
  (org-log-done 'time)
  (org-log-into-drawer t)
  (org-todo-keywords
   '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
        (sequence "BACKLOG(b)" "PLAN(p)" "READY(r)" "ACTIVE(a)" "REVIEW(v)" "WAIT(w@/!)" "HOLD(h)" "|" "COMPLETED(c)" "CANC(k@)")))
  :config
  (progn (eval-after-load "org"
           '(require 'ox-md nil t))
         (setq org-support-shift-select 'always)
         ;; rename org-roam buffers to their enclosed #+TITLE
         (add-hook 'org-mode-hook 'fade/org-mode-rename-buffer)))

;;; Themes need finding.
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-emacs-directory))

;; where I'm developing my theme.
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" "~/SourceCode/lisp/emacs_stuff/"))

;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1)
  (display-time-mode 1))

(set-frame-parameter nil 'fullscreen 'maximized)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; Set path to local dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(setq site-org-files
      (expand-file-name "OrgFiles" "~/Dropbox/"))


(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.zshrc\\'" . sh-mode))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))


;; Write backup files to their own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; configure dired early, because it is built in.
(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :custom ((dired-listing-switches "-hal --group-directories-first")))


;; start the emacs daemon process.
(server-start)

;;; Load the config contained in our Org-mode file, which contains the
;;; meat of this config..
(org-babel-load-file (concat user-emacs-directory "config.org"))

;;; reinstall all installed packages, when emacs changes version

(defun package-reinstall-all-activated-packages ()
  "Refresh and reinstall all activated packages."
  (interactive)
  (package-refresh-contents)
  (dolist (package-name package-activated-list)
    (when (package-installed-p package-name)
      (unless (ignore-errors                   ;some packages may fail to install
                (package-reinstall package-name))
        (warn "Package %s failed to reinstall" package-name)))))

(provide 'init)
;;; init.el ends here
