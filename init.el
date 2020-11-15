
;; (setq gc-cons-threshold 400000000)

;;; Set up package
(require 'package)

(setq package-archives '(("org"   . "https://orgmode.org/elpa/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")))

(when (boundp 'package-pinned-packages)
  (setq package-pinned-packages
        '((org-plus-contrib . "org"))))
(package-initialize)

;;; Bootstrap use-package

;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))


;; From use-package README
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-verbose t)

;;; themes need finding.
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-emacs-directory))

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


;; start the emacs daemon process.
(server-start)

;;; Load the config contained in our Org-mode file, which contains the
;;; meat of this config..
(org-babel-load-file (concat user-emacs-directory "config.org"))

