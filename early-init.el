;;; early-init.el --- Base emacs config file -*- lexical-binding: t; -*-
;; Copyright (c) 2018-2021 Brian O'Reilly <fade@deepsky.com>

;; we have a lot of RAM. Let's use it.
;; (setq gc-cons-threshold 400000000)

;; moving over to straight, because we're tracking emacs early release test tags.
(setq package-enable-at-startup nil)
