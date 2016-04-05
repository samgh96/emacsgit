(add-to-list 'load-path "/home/samuel/.emacs.d/elpa/xelb-0.6")
(add-to-list 'load-path "/home/samuel/.emacs.d/elpa/exwm-0.4")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#FAFAFA" "#FF1744" "#66BB6A" "#F57F17" "#42A5F5" "#7E57C2" "#0097A7" "#546E7A"] t)
 '(beacon-color "#F8BBD0")
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("11c2fc81265412f28be341c8729e1d8b26e0abe81355a80ecf9007a8fff9aa12" "b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" default)))
 '(evil-emacs-state-cursor (quote ("#D50000" bar)) t)
 '(evil-insert-state-cursor (quote ("#D50000" hbar)) t)
 '(evil-normal-state-cursor (quote ("#F57F17" box)) t)
 '(evil-visual-state-cursor (quote ("#66BB6A" box)) t)
 '(fci-rule-color "#14151E")
 '(font-use-system-font t)
 '(fringe-mode 10 nil (fringe))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (quote
    ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(linum-format " %6d ")
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(org-babel-load-languages
   (quote
    ((matlab . t)
     (C . t)
     (python . t)
     (java . t)
     (emacs-lisp . t)
     (latex . t))))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(red "#ffffff")
 '(show-paren-mode t)
 '(tabbar-background-color "#ffffff")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminal" :foundry "DEC" :slant normal :weight normal :height 105 :width normal))))
 '(helm-action ((t (:underline "black"))))
 '(helm-buffer-directory ((t (:background "dark magenta" :foreground "yellow"))))
 '(helm-header-line-left-margin ((t (:background "dark green" :foreground "black")))))
(require 'package)
(add-to-list 'package-archives
	     '("melpa"."http://melpa.org/packages/")
	     '("org"."http://orgmode.org/elpa/"))
(package-initialize)
(package-install 'org)

;(require 'linum-mode)
;(linum-mode 1)
(require 'helm)
(global-set-key(kbd "M-x") 'helm-M-x)
(global-set-key(kbd "C-x b") 'helm-buffers-list)
(global-set-key(kbd "C-x C-f") 'helm-find-files)
;(load-theme 'green-phosphor t)
;(load-theme 'monokai t)
;(load-theme 'atom-dark t)
;(load-theme 'graphene-meta t)
;(load-theme 'dracula t)
;(load-theme 'dakrone t)
;(load-theme 'airline-serene t)
;(load-theme 'airline-behelit t)
;(load-theme 'airline-kolor t)
;(load-theme 'abyss t)
(load-theme 'airline-kalisi t)
(load-theme 'ahungry t)
(load-theme 'tango-dark t)
(add-to-list 'default-frame-alist '(font . "Consolas Medium 10" ))
(set-face-attribute 'default t :font "Consolas Medium 10" )


(require 'ox-reveal)
(setq org-reveal-root "file:///home/samuel/reveal.js")

(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)

(global-set-key (kbd "M-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-s-<down>") 'shrink-window)
(global-set-key (kbd "M-s-<up>") 'enlarge-window)

;(require 'eclim)
;(require 'eclimd)

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

(add-hook 'after-init-hook 'global-company-mode)

(use-package ensime
  :commands ensime ensime-mode)

(add-hook 'scala-mode-hook 'ensime-mode)

(require 'company)
(global-company-mode t)
;(require 'ac-emacs-eclim-source)
;(ac-emacs-eclim-config)
;(require 'linum)
(global-nlinum-mode t)

;(require 'company)
;(require 'company-emacs-eclim)
;(company-emacs-eclim-setup)
;(global-company-mode t)
;(global-eclim-mode)

(autoload 'magit-status "magit" nil t)

;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default)

;(require 'exwm-randr)
;(setq exwm-randr-workspace-output-plist '(0 "LVSD1"))
;(add-hook 'exwm-randr-screen-change-hook
;          (lambda ()
;            (start-process-shell-command
;             "xrandr" nil "xrandr --output LVSD1 --mode 1366x768")))
;(exwm-randr-enable)


(setenv "PATH" (concat "/usr/local/bin/sbt/bin:" (getenv "PATH")))

(require 'multiple-cursors)

;; When you have an active region that spans multiple lines, the following will add a cursor to each line:
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use:
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'multiple-cursors-settings)

;;; multiple-cursors-settings.el ends here
