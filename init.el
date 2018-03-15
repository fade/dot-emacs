
(setq gc-cons-threshold 400000000)

;;; utilities to untangle many org files at load time. With thanks to
;;; [[https://github.com/howardabrams/dot-files.git][Howard Abrams]]

(require 'org)
(require 'ob)
(require 'ob-tangle)

(defun fa/build-dot-files ()
  "Compile and place all init files in this directory into their
  respective places"
  )

(defun ha/tangle-file (file)
  "Given an 'org-mode' FILE, tangle the source code."
  (interactive "fOrg File: ")
  (find-file file)   ;;  (expand-file-name file \"$DIR\")
  (org-babel-tangle)
  (kill-buffer))


(defun ha/tangle-files (path)
  "Given a directory, PATH, of 'org-mode' files, tangle source code out of all literate programming files."
  (interactive "D")
  (mapc 'ha/tangle-file (ha/get-files path)))


(defun ha/get-dot-files ()
  "Pull and build latest from the Github repository.  Load the resulting Lisp code."
  (interactive)
  (let ((git-results
         (shell-command (concat "cd " dot-files-src "; git pull"))))
    (if (not (= git-results 0))
        (message "Can't pull the goodness. Pull from git by hand.")
      (load-file (concat dot-files-src "/emacs.d/shell-script-funcs.el"))
      (load-file (concat dot-files-src "/build.el"))
      (require 'init-main))))

;;; themes need finding.
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-emacs-directory))

;;; some of my own utility functions

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (pos) 'read-face-name)
                  (get-char-property (pos) 'face))))
    (if face (message "Face: %s:" face) (message "No face at %d" pos))))

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

;;; Set up package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(when (boundp 'package-pinned-packages)
  (setq package-pinned-packages
        '((org-plus-contrib . "org"))))
(package-initialize)

;;; Bootstrap use-package

;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package README
(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)
(setq use-package-verbose t)
(server-start)


;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))

(setq gc-cons-threshold 8000000)
