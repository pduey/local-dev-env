;;; rufo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rufo" "rufo.el" (0 0 0 0))
;;; Generated autoloads from rufo.el

(autoload 'rufo-minor-mode "rufo" "\
Use rufo to automatically fix ruby before saving.

If called interactively, enable Rufo minor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rufo" '("rufo-")))

;;;***

;;;### (autoloads nil nil ("rufo-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rufo-autoloads.el ends here
