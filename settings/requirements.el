(provide 'requirements)
(require 'package)
(add-to-list 'package-archives
	     '("melpa"."http://melpa.org/packages/")
	     '("org"."http://orgmode.org/elpa/"))
(package-initialize)
(package-install 'org)
(require 'helm)
(require 'ox-reveal)
(setq org-reveal-root "file:///home/samuel/reveal.js")
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'scala-mode-hook 'ensime-mode)
(require 'company)
(autoload 'magit-status "magit" nil t)
(setenv "PATH" (concat "/usr/local/bin/sbt/bin:" (getenv "PATH")))

(setq multi-term-program "/usr/bin/zsh")
(require 'multiple-cursors)

(provide 'multiple-cursors-settings)

(require 'smartparens)

;; Enable plantuml-mode for PlantUML files
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(add-to-list
 'org-src-lang-modes '("plantuml" . plantuml))

(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(require 'flymake-rust)
(add-hook 'rust-mode-hook 'flymake-rust-load)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
(defun my-rust-mode-config ()
  "For use in `rust-mode-hook'."
  (local-set-key (kbd "C-c C-c") 'cargo-process-run)
  )
(add-hook 'rust-mode-hook 'my-rust-mode-config)
