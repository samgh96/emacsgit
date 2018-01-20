(provide 'themes)
(require 'doom-themes)
(require 'solaire-mode)
;;; Settings (defaults)
;; (setq doom-enable-bold t    ; if nil, bolding are universally disabled
;;       doom-enable-italic t  ; if nil, italics are universally disabled

;;       ;; doom-one specific settings
;;       ;;doom-one-brighter-modeline nil
;;       ;;doom-one-brighter-comments nil
;;       )
;; ;; Load the theme (doom-one, doom-dark, etc.)
;; ;(load-theme 'sanityinc-tomorrow-eighties t)
;; (load-theme 'rebecca t)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-peacock t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
;;; OPTIONAL
;; brighter source buffers (that represent files)
;(add-hook 'find-file-hook 'doom-buffer-mode-maybe)
;; ...if you use auto-revert-mode
;(add-hook 'after-revert-hook 'doom-buffer-mode-maybe)
;; And you can brighten other buffers (unconditionally) with:
;(add-hook 'ediff-prepare-buffer-hook 'doom-buffer-mode)

;; brighter minibuffer when active
;(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)

;; brighten buffers (that represent real files)
(add-hook 'after-change-major-mode-hook #'turn-on-solaire-mode)
;; To enable solaire-mode unconditionally for certain modes:
(add-hook 'ediff-prepare-buffer-hook #'solaire-mode)

;; ...if you use auto-revert-mode:
(add-hook 'after-revert-hook #'turn-on-solaire-mode)

;; highlight the minibuffer when it is activated:
(add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)

;; if the bright and dark background colors are the wrong way around, use this
;; to switch the backgrounds of the `default` and `solaire-default-face` faces.
;; This should be used *after* you load the active theme!
;;
;; NOTE: This is necessary for themes in the doom-themes package!
(solaire-mode-swap-bg)
;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!
;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; Necessary for org-mode
(setq org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)
(add-to-list 'default-frame-alist '(font . "Input Mono Condensed Light 13" ))
(set-face-attribute 'default t :font "Input Mono Condensed Light 13" )
(scroll-bar-mode 0)

;; (set-face-attribute 'org-level-1 nil :height 1.0)
