(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline success warning error])
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(column-number-mode t)
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes '(deepsky))
 '(custom-safe-themes
   '("7212337b36e4cce2628c9451173d910c728b5a760a0ce17cf82cd41af907bd9b" "7e22a8dcf2adcd8b330eab2ed6023fa20ba3b17704d4b186fa9c53f1fab3d4d2" "893e6ba11e50a0f2007d0fe67e0d16e9c04aa016ecfd9892c8ed3233d98cecd3" "210e1f1c1b675e33aa400075c5c41f26440b2f0dcbe8ad7368a71b92012c267e" "3aed30c256f3506b39fdf4a7143168f9ca624947a7ea77c08cf7bd65c0dab9b7" "f9b8de70122e2370c69f59592cfc162f55ceded36cbbf7f8962f4985124e949f" "eb6815efcf4b3506804a1aca00b4100bdf7a76664c6396c77a760791fd1fa6cb" "0becd5fdab50c67580f8ab05c71d8c632a24e5ede5f657ebf71d5f9fca3b879c" "e6cace7f97c0c42dd9656a8db27c92f27b6be6b2be3a44ed9f304648cf13a153" "dd8f89c0930a74fec169fa779822376a826147db9ecf784a2a12a7ae4d0ba2b5" "f1db6b75f93a964718258bf1cb78993b6b654468b1ee1e26df74c44ba99e8c4e" "cc8f5f7bdd13efd250c01db39a5193c948fba7c02e5ddc478f60d08347fe5405" "b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "235dc2dd925f492667232ead701c450d5c6fce978d5676e54ef9ca6dd37f6ceb" "4f2ede02b3324c2f788f4e0bad77f7ebc1874eff7971d2a2c9b9724a50fb3f65" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" default))
 '(display-time-mode t)
 '(fci-rule-color "#383838")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-theme-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-theme-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-theme-fringe-yellow))
 '(fringe-mode 6 nil (fringe))
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-ignore-buffer-patterrns '("\\.txt\\'" "\\.mkd\\'"))
 '(helm-ag-insert-at-point 'symbol)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#cfdf30")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae8fc")
     ("DONT" . "#80d200")
     ("FAIL" . "#ff8059")
     ("BUG" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#f0ce43")
     ("KLUDGE" . "#eecc00")
     ("HACK" . "#eecc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9977")
     ("XXX+" . "#f4923b")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#bfd9ff")))
 '(ibuffer-deletion-face 'modus-theme-mark-del)
 '(ibuffer-filter-group-name-face 'modus-theme-mark-symbol)
 '(ibuffer-marked-face 'modus-theme-mark-sel)
 '(ibuffer-title-face 'modus-theme-pseudo-header)
 '(jdee-db-active-breakpoint-face-colors (cons "#1E2029" "#bd93f9"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1E2029" "#50fa7b"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1E2029" "#565761"))
 '(linum-format " %7d ")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4"))
 '(objed-cursor-color "#ff5555")
 '(package-selected-packages
   '(embark marginalia orderless consult vertico ob-restclient terraform-doc terraform-mode telephone-line 0x0 lorem-ipsum bug-hunter setup forge yasnippet avy spaceline-all-the-icons perspective dockerfile-mode docker company-quickhelp hydra orgtbl-aggregate abyss-theme sparql-mode pdf-tools extempore-mode helpful skeletor :skeletor spaceline-config modus-vivendi-theme all-the-icons-dired dired-single jedi doct visual-fill-column which-key doom-modeline doom-themes color-identifiers-mode flycheck-eslint flycheck-nim flycheck-clojure flycheck-cython flycheck-ido company-org-roam org-roam-server org-roam-bibtex org-roam ac-helm ac-sly sly-ac helm-sly :flycheck yatemplate sly-quicklisp sly-repl-ansi-color nim-mode :sly-quicklisp sly-repl-ansi-colors sly-named-readtables sly-macrostep nord-theme northcode-theme nova-theme sly-asdf all-the-icons sly buffer-move slime yasnippet-snippets helm-ispell magithub helm-slime csv csv-mode slime-helm eww-lnum symon undotree common-lisp-snippets swiper projectile diminish smart-mode-line-powerline-theme fancy-battery spaceline dashboard pretty-mode color-theme-approximate 2048-game org-bullets beacon jinja2-mode company-ansible ansible-vault ansible-doc zoom ansible htmlize hcl-mode helm-w3m :helm-w3m w3m yaml-mode paredit shell-pop scratch zoom-frm emmet-mode visual-regexp-steroids visual-regexp typescript-mode smooth-scrolling skewer-mode smartscan restclient geiser racket-mode olivetti multiple-cursors markdown-mode macrostep gist flycheck expand-region magit helm-swoop helm-ag helm-projectile helm company clojure-mode c-eldoc android-mode ace-window ace-jump-mode ag ido-vertical-mode transpose-frame ox-pandoc company-jedi js-auto-beautify js-comint js-doc js-format js-import js2-refactor loccur hexrgb purple-haze-theme heroku-theme company-anaconda elpy rainbow-mode slime-repl-ansi-color slime-company rust-mode crux undo-tree latex-preview-pane latex-extra xquery-mode virtualenvwrapper quickrun exec-path-from-shell page-break-lines solarized-theme cyberpunk-theme))
 '(pdf-view-midnight-colors (cons "#f8f8f2" "#282a36"))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(rustic-ansi-faces
   ["#282a36" "#ff5555" "#50fa7b" "#f1fa8c" "#61bfff" "#ff79c6" "#8be9fd" "#f8f8f2"])
 '(safe-local-variable-values
   '((eval cl-flet
           ((enhance-imenu-lisp
             (&rest keywords)
             (dolist
                 (keyword keywords)
               (add-to-list 'lisp-imenu-generic-expression
                            (list
                             (purecopy
                              (concat
                               (capitalize keyword)
                               (if
                                   (string=
                                    (substring-no-properties keyword -1)
                                    "s")
                                   "es" "s")))
                             (purecopy
                              (concat "^\\s-*("
                                      (regexp-opt
                                       (list
                                        (concat "define-" keyword))
                                       t)
                                      "\\s-+\\(" lisp-mode-symbol-regexp "\\)"))
                             2)))))
           (enhance-imenu-lisp "bookmarklet-command" "class" "command" "ffi-method" "function" "internal-page-command" "internal-page-command-global" "mode" "parenscript" "user-class"))
     (Package . POSTMODERN)
     (Package . CIRCULAR-BUFFER)
     (encoding utf-8)
     (Package . S-SQL)
     (package . RFC2388)
     (Package . FLEXI-STREAMS)
     (Package . CHUNGA)
     (Package . CL-PPCRE)
     (Package . CL-POSTGRES-TRIVIAL-UTF-8)
     (Package . CL-POSTGRES)
     (Syntax . Ansi-Common-Lisp)
     (Package . CL-WHO)
     (Package . LALR)
     (readtable . runes)
     (Package . CXML)
     (Syntax . Common-Lisp)
     (package . rune-dom)
     (Package . DRAKMA)
     (Package . HUNCHENTOOT)
     (Package . FSet)
     (eval cl-flet
           ((enhance-imenu-lisp
             (&rest keywords)
             (dolist
                 (keyword keywords)
               (add-to-list 'lisp-imenu-generic-expression
                            (list
                             (purecopy
                              (concat
                               (capitalize keyword)
                               (if
                                   (string=
                                    (substring-no-properties keyword -1)
                                    "s")
                                   "es" "s")))
                             (purecopy
                              (concat "^\\s-*("
                                      (regexp-opt
                                       (list
                                        (concat "define-" keyword))
                                       t)
                                      "\\s-+\\(" lisp-mode-symbol-regexp "\\)"))
                             2)))))
           (enhance-imenu-lisp "bookmarklet-command" "class" "command" "function" "mode" "parenscript" "user-class"))
     (Package . CL-UNICODE)
     (Package . containers)
     (eval put 'test-js-eval 'common-lisp-indent-function 1)
     (eval put 'test-ps-js 'common-lisp-indent-function 1)
     (indent-tabs)
     (Package . CL-FAD)
     (Syntax . COMMON-LISP)
     (Package . Lexical-Contexts)
     (Base . 10)
     (Syntax . ANSI-Common-Lisp)
     (eval sh-set-shell "zsh")))
 '(send-mail-function 'mailclient-send-it)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(spaceline-all-the-icons-separator-type 'wave)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#BC8383")
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
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(warning-suppress-types '((browse-url) (comp)))
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#199919991999"))) t)
 '(company-scrollbar-fg ((t (:background "#0ccc0ccc0ccc"))) t)
 '(company-tooltip ((t (:inherit default :background "#051e051e051e"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-scrollbar-thumb ((t (:background "#0ccc0ccc0ccc"))))
 '(company-tooltip-scrollbar-track ((t (:background "#199919991999"))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(font-lock-constant-face ((t (:foreground "#00ff7f"))))
 '(font-lock-string-face ((t (:foreground "cornsilk3"))))
 '(helm-bookmark-directory ((t (:inherit helm-ff-directory))))
 '(helm-buffer-directory ((t (:inherit helm-ff-directory)))))
