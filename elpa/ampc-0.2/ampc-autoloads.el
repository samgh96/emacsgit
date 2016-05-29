;;; ampc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ampc" "ampc.el" (22285 36536 836672 351000))
;;; Generated autoloads from ampc.el

(autoload 'ampc-tagger-dired-mode "ampc" "\
Minor mode that adds a audio file meta data tagging key binding to dired.

\(fn &optional ARG)" t nil)

(autoload 'ampc-tagger-dired "ampc" "\
Start the tagging subsystem on dired's marked files.
With optional prefix argument ARG, use the next ARG files.

\(fn &optional ARG)" t nil)

(autoload 'ampc-tag-files "ampc" "\
Start the tagging subsystem.
FILES should be a list of absolute file names, the files to tag.

\(fn FILES)" nil nil)

(autoload 'ampc-suspended-p "ampc" "\
Return non-nil if ampc is suspended.

\(fn)" t nil)

(autoload 'ampc-on-p "ampc" "\
Return non-nil if ampc is connected to the daemon.

\(fn)" t nil)

(autoload 'ampc "ampc" "\
Ampc is an asynchronous client for the MPD media player.
This function is the main entry point for ampc.

HOST and PORT specify the MPD instance to connect to.  The values
default to the ones specified in `ampc-default-server'.

\(fn &optional HOST PORT SUSPEND)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ampc-autoloads.el ends here
