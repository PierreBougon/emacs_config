;;
;; .emacs for emacs_conig in /home/bougon_p
;; 
;; Made by bougon_p
;; Login   <bougon_p@epitech.net>
;; 
;; Started on  Thu Dec 31 04:01:46 2015 bougon_p
;; Last update Thu May 26 16:15:50 2016 bougon_p
;;

;; DO NOT DELETE
(eval-after-load "warnings"
  '(setq display-warning-minimum-level :error))
(load "std.el")
(load "std_comment.el")
(add-to-list 'load-path "~/.emacs.d/")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'flatland t)

(add-to-list 'load-path "~/emacs-neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)



;; (load-file "~/.emacs.d/color-theme/themes/monokai-theme.el")
;; (monokai-theme.el)

;; Old Themes :)
;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-midnight)

;; Affichage des lignes
;; (global-linum-mode 1)
;; (setq linum-format "%4d \u2502 ")

;; Surlignage en orange des ligne de plus de 80 caractères
(add-hook 'c-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{79\\}" 'hi-yellow)))

;; Suppression des espaces en fin de ligne dans les fichiers C et C++
(add-hook 'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook 'c++-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))

;; Deplacement auto des fichier~ dans le dossier ~/.emacs.d/backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t
      version-control t
      delete-old-versions t
      kept-new-versions 5
      kept-old-versions 5
      )

;; Auto-completion
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)


;; Config pour le web dev
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
      )

;; C++ mode pour les fichiers .h
;(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-enabled-themes (quote (tango-dark)))
;;  '(custom-safe-themes (quote ("2da65cb7074c176ca0a33f06bcc83ef692c9175e41b6370f5e94eb5811d6ee3a" default)))
;;  '(inhibit-startup-screen t))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
