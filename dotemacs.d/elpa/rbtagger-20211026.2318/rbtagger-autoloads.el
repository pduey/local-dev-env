;;; rbtagger-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rbtagger" "rbtagger.el" (0 0 0 0))
;;; Generated autoloads from rbtagger.el

(autoload 'rbtagger-find-definitions "rbtagger" "\
Find definitions for the Ruby SYMBOL at point.
This function reads the current Ruby buffer and builds a tag
candidates list, then it loops through the list and calls
`xref-find-definitions' on each candidate.  It is assumed that
your tags file was parsed with ripper-tags --emacs and --extra=q
options.

\(fn SYMBOL)" t nil)

(autoload 'rbtagger-find-definitions-other-window "rbtagger" "\
Find definitions for the Ruby SYMBOL at point in another window.
See `rbtagger-find-definitions'.

\(fn SYMBOL)" t nil)

(autoload 'rbtagger-find-definitions-other-frame "rbtagger" "\
Find definitions for the Ruby SYMBOL at point in another frame.
See `rbtagger-find-definitions'.

\(fn SYMBOL)" t nil)

(autoload 'rbtagger-generate-tags "rbtagger" "\
Generate Ruby tags for the current git project.
Takes PROJECT-DIR and optionally GENERATE-TAGS-BIN.  If GENERATE_TAGS-BIN
is not passed, it uses the `rbtagger-generate-tags' setting.

\(fn PROJECT-DIR &optional GENERATE-TAGS-BIN)" t nil)

(autoload 'rbtagger-stdout-log "rbtagger" "\
Switch to rbtagger stdout log." t nil)

(autoload 'rbtagger-stderr-log "rbtagger" "\
Switch to rbtagger stderr log." t nil)

(autoload 'rbtagger-mode "rbtagger" "\
Tag management for Ruby files.

If called interactively, enable Rbtagger mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rbtagger" '("rbtagger-")))

;;;***

;;;### (autoloads nil nil ("rbtagger-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rbtagger-autoloads.el ends here
