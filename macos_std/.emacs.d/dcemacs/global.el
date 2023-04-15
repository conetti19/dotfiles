;; Allow directories to be visited in the same buffer with 'a'
(put 'dired-find-alternate-file 'disabled nil)

;; Get rid of the toolbar
;;(tool-bar-mode -1)

;; Scroll down with the cursor,move down the buffer one
;; line at a time, instead of in larger amounts.
(setq scroll-step 1)

;; global-auto-revert-mode:
(global-auto-revert-mode 1)

;; query before exit:
(setq kill-emacs-query-functions
     (cons (lambda () (yes-or-no-p "Really kill Emacs?"))
	   kill-emacs-query-functions))

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; Should be set in emacs 23 anyway
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)
(setq line-number-display-limit nil) ; always display line number, no matter how large the buffer is.

;; Explicitly show the end of a buffer
;;(set-default 'indicate-empty-lines t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
;; no backup files:
;;(setq make-backup-files nil)

;; Gotta see matching parens
(show-paren-mode t)

;; Trailing whitespace is unnecessary
;; Nice in theroy, but don't want uncessary SCM diffs of just whitespace
;;(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Other things to consider from Ryan

;; Don't truncate lines
;;(setq truncate-lines t)
;;(setq truncate-partial-width-windows nil)

;; Emacs gurus don't need no stinking scroll bars
;; (when (fboundp 'toggle-scroll-bar)
;;   (toggle-scroll-bar -1))

;; Line-wrapping
;; (set-default 'fill-column 80)

;; Prevent the annoying beep on errors
;; (setq visible-bell t)

