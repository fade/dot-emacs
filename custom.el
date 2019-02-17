(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (deepsky)))
 '(custom-safe-themes
   (quote
    ("f9b8de70122e2370c69f59592cfc162f55ceded36cbbf7f8962f4985124e949f" "eb6815efcf4b3506804a1aca00b4100bdf7a76664c6396c77a760791fd1fa6cb" "0becd5fdab50c67580f8ab05c71d8c632a24e5ede5f657ebf71d5f9fca3b879c" "e6cace7f97c0c42dd9656a8db27c92f27b6be6b2be3a44ed9f304648cf13a153" "dd8f89c0930a74fec169fa779822376a826147db9ecf784a2a12a7ae4d0ba2b5" "f1db6b75f93a964718258bf1cb78993b6b654468b1ee1e26df74c44ba99e8c4e" "cc8f5f7bdd13efd250c01db39a5193c948fba7c02e5ddc478f60d08347fe5405" "b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "235dc2dd925f492667232ead701c450d5c6fce978d5676e54ef9ca6dd37f6ceb" "4f2ede02b3324c2f788f4e0bad77f7ebc1874eff7971d2a2c9b9724a50fb3f65" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" default)))
 '(display-time-mode t)
 '(fci-rule-color "#383838")
 '(fringe-mode 6 nil (fringe))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(linum-format " %7d ")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (helm-ispell magithub helm-slime csv csv-mode slime-helm eww-lnum symon undotree common-lisp-snippets swiper projectile diminish smart-mode-line-powerline-theme fancy-battery spaceline dashboard pretty-mode color-theme-approximate 2048-game org-bullets beacon jinja2-mode company-ansible ansible-vault ansible-doc zoom ansible htmlize hcl-mode helm-w3m :helm-w3m w3m yaml-mode paredit shell-pop scratch zoom-frm emmet-mode visual-regexp-steroids visual-regexp typescript-mode smooth-scrolling skewer-mode smartscan restclient geiser racket-mode olivetti multiple-cursors markdown-mode macrostep gist flycheck expand-region magit helm-swoop helm-ag helm-projectile helm company clojure-mode c-eldoc android-mode ace-window ace-jump-mode ag ido-vertical-mode transpose-frame ox-pandoc org-plus-contrib company-jedi js-auto-beautify js-comint js-doc js-format js-import js2-refactor loccur hexrgb purple-haze-theme heroku-theme company-anaconda elpy rainbow-mode slime-repl-ansi-color slime-company rust-mode crux undo-tree latex-preview-pane latex-extra xquery-mode virtualenvwrapper quickrun exec-path-from-shell page-break-lines solarized-theme cyberpunk-theme use-package)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(safe-local-variable-values
   (quote
    ((indent-tabs)
     (Package . CL-FAD)
     (Syntax . COMMON-LISP)
     (Package . Lexical-Contexts)
     (Base . 10)
     (Syntax . ANSI-Common-Lisp)
     (eval sh-set-shell "zsh"))))
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-string-face ((t (:foreground "cornsilk3"))))
 '(helm-bookmark-directory ((t (:inherit helm-ff-directory))))
 '(helm-buffer-directory ((t (:inherit helm-ff-directory)))))
