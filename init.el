
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/home/samuel/.emacs.d/settings/")
;; Indent Fucking Whole Buffer (by github.com/skgsergio)
(defun iwb ()
  "Indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max))
  (message "Indent buffer: Done.")
  )

(defun plantuml-export-to-latex ()
  "Export current plantuml buffer to LaTeX file"
  (interactive)
  (message (concat "Creating LaTeX from " (buffer-file-name)))
  (when (shell-command (concat "java -jar ~/plantuml.jar -tlatex " (buffer-file-name)))
    (message "LaTeX succesfully created!"))
  )

;; (defun pdflatex-export-to-pdf ()
;;   "Export current tex buffer to PDF"
;;   (interactive)
;;   (message (concat "Creating PDF from " (buffer-file-name)))
;;   (switch-to-buffer-other-window
;;    (process-buffer
;;     (start-process-shell-command "emacs-pdflatex" "PDFlatex" (concat "pdflatex " (buffer-file-name)))))
;;   )
;; Disables system buzzer
(setq visible-bell 0)
(require 'requirements)
(require 'themes)
(require 'global-modes)
(require 'binds)
(require 'modeline)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--simple-prompt -i")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   (vector "#515151" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#cccccc"))
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "cf284fac2a56d242ace50b6d2c438fcc6b4090137f1631e32bedf19495124600" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "1b1e54d9e0b607010937d697556cd5ea66ec9c01e555bb7acea776471da59055" "acad73ae74b280b29809d10cda2e8f9015cfb007a00fadee55b85861c7c5b99e" "756ec68798410a2e705dd719c7328af9ecbb782c94130d489b6b3109841833eb" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "3fa07dd06f4aff80df2d820084db9ecbc007541ce7f15474f1d956c846a3238f" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "e269026ce4bbd5b236e1c2e27b0ca1b37f3d8a97f8a5a66c4da0c647826a6664" "fac1f85b0c5aae5d7f264e707444aa445b3b672d1d69d23ac3fe9c2438844e0c" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" "4182c491b5cc235ba5f27d3c1804fc9f11f51bf56fb6d961f94788be034179ad" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "6f11ad991da959fa8de046f7f8271b22d3a97ee7b6eca62c81d5a917790a45d9" "365d9553de0e0d658af60cff7b8f891ca185a2d7ba3fc6d29aadba69f5194c7f" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "63b822ccd7a1928a7cbc88037dddf7b74b2f8a507e1bccd7281f20646f72cd0a" "6bde11b304427c7821b72a06a60e8d079b8f7ae10b407d8af37ed5e5d59b1324" "b00752c0281b9671076d9a7448a0b063b0c420f15756503a8c4f80eb115bb56c" "9f3181dc1fabe5d58bbbda8c48ef7ece59b01bed606cfb868dd147e8b36af97c" "227e2c160b0df776257e1411de60a9a181f890cfdf9c1f45535fc83c9b34406b" default)))
 '(package-selected-packages
   (quote
    (cmake-ide cmake-mode cmake-project ac-clang ac-rtags auto-complete-clang company-irony company-irony-c-headers company-rtags flycheck-irony flycheck-rtags helm-rtags irony rtags pretty-mode spaceline-all-the-icons spaceline modeline-char main-line powerline-evil company-racer racer smart-mode-line-powerline-theme rebecca-theme ein quack kotlin-mode platformio-mode vhdl-tools blackboard-theme alect-themes persp-mode solaire-mode arduino-mode flymake-rust flycheck-rust all-the-icons-dired neotree ensime idris-mode latex-math-preview plantuml-mode ac-math magit alchemist toml toml-mode cargo rust-mode doom-themes org zone-nyan xah-math-input unicode-input twilight-theme tern symon switch-window swiper-helm smartparens scala-mode rainbow-identifiers rainbow-delimiters python-mode purple-haze-theme plur paganini-theme ox-reveal ox-html5slide org-pdfview org-beautify-theme org-ac ob-scala nodejs-repl nlinum multiple-cursors multi-term multi-eshell monokai-theme mingus matlab-mode lua-mode json-mode js3-mode js2-highlight-vars js-comint jedi jdee javadoc-lookup java-imports iasm-mode htmlize helm-systemd helm-git helm-company haskell-mode green-phosphor-theme graphene-meta-theme go-mode go git flycheck exwm erlang emmet-mode emacs-eclim elpy egg dracula-theme django-theme darktooth-theme dark-souls dark-mint-theme dark-krystal-theme dakrone-theme cyberpunk-theme context-coloring company-web color-theme-sanityinc-tomorrow clues-theme chess caroline-theme busybee-theme bpe boron-theme bongo bliss-theme birds-of-paradise-plus-theme base16-theme badwolf-theme badger-theme babel-repl auto-complete-c-headers aurora-theme auctex atom-one-dark-theme atom-dark-theme arjen-grey-theme apropospriate-theme anti-zenburn-theme android-mode anaconda-mode ample-zen-theme ample-theme ampc airline-themes ahungry-theme afternoon-theme ac-html ac-helm abyss-theme)))
 '(scheme-program-name "guile"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-candidate-number ((t (:background "light slate blue" :foreground "black" :underline t))))
 '(helm-candidate-number-suspended ((t (:inherit helm-candidate-number))))
 '(helm-ff-directory ((t (:foreground "deep sky blue"))))
 '(helm-ff-dotted-directory ((t (:foreground "chartreuse"))))
 '(helm-ff-dotted-symlink-directory ((t (:foreground "cyan"))))
 '(helm-ff-invalid-symlink ((t (:foreground "red"))))
 '(helm-ff-prefix ((t (:foreground "black"))))
 '(helm-header-line-left-margin ((t (:foreground "dark green")))))
