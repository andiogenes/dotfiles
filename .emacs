(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(package-selected-packages
   '(base16-theme neotree cider clojure-mode paredit company-go go-mode racket-mode lsp-mode zig-mode company counsel ivy auto-complete evil)))

;; Look and feel
(load-theme 'base16-default-dark t)

(global-display-line-numbers-mode)

(setq-default tab-width 4)

(toggle-scroll-bar -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(show-paren-mode 1)
(setq show-paren-delay 0)

(add-to-list 'default-frame-alist '(font . "Source Code Pro-11" ))
(set-face-attribute 'default t :font "Source Code Pro-11" )

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))

;; System, etc
(setq make-backup-files nil)

;; Ivy
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; Company mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; LSP
(require 'lsp-mode)
(setq lsp-headerline-breadcrumb-enable nil)
(add-hook 'go-mode-hook 'lsp-deferred)

;; Neotree
(require 'neotree)
(setq neo-smart-open t)
(global-set-key (kbd "<f8>") 'neotree-toggle)
