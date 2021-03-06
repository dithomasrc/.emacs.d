;;; highlight-thing-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-highlight-thing-mode highlight-thing-mode)
;;;;;;  "highlight-thing" "highlight-thing.el" (21846 17250 283 0))
;;; Generated autoloads from highlight-thing.el

(autoload 'highlight-thing-mode "highlight-thing" "\
Minor mode that highlights things at point

\(fn &optional ARG)" t nil)

(defvar global-highlight-thing-mode nil "\
Non-nil if Global-Highlight-Thing mode is enabled.
See the command `global-highlight-thing-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-highlight-thing-mode'.")

(custom-autoload 'global-highlight-thing-mode "highlight-thing" nil)

(autoload 'global-highlight-thing-mode "highlight-thing" "\
Toggle Highlight-Thing mode in all buffers.
With prefix ARG, enable Global-Highlight-Thing mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Highlight-Thing mode is enabled in all buffers where
`highlight-thing-mode-maybe-activate' would do it.
See `highlight-thing-mode' for more information on Highlight-Thing mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("highlight-thing-pkg.el") (21846 17250
;;;;;;  825986 711000))

;;;***

(provide 'highlight-thing-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; highlight-thing-autoloads.el ends here
