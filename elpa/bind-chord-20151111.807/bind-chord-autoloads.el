;;; bind-chord-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "bind-chord" "bind-chord.el" (22296 44215 596631
;;;;;;  627000))
;;; Generated autoloads from bind-chord.el

(autoload 'bind-chord "bind-chord" "\
Bind CHORD to COMMAND in KEYMAP (`global-map' if not passed).

\(fn CHORD COMMAND &optional KEYMAP)" nil t)

(autoload 'bind-chords "bind-chord" "\
Bind multiple chords at once.

Accepts keyword argument:
:map - a keymap into which the keybindings should be added

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bind-chord-autoloads.el ends here
