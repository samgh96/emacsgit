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
(use-package ensime
  :commands ensime ensime-mode)
(add-hook 'scala-mode-hook 'ensime-mode)
(require 'company)
(autoload 'magit-status "magit" nil t)
(setenv "PATH" (concat "/usr/local/bin/sbt/bin:" (getenv "PATH")))

(require 'multiple-cursors)

(provide 'multiple-cursors-settings)

(require 'smartparens)
