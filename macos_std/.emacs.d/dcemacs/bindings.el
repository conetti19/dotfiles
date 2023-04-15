;; define shortcut keys:
;; (global-set-key [f1] 'kill-this-buffer)
;;   (global-set-key "\e[25~" 'kill-all-buffers) ; S-f1
;;   (global-set-key [f11] 'kill-all-buffers)
;; (global-set-key [f2] 'find-file)
;;   (global-set-key "\e[26~" 'dired) ; S-f2
;;   (global-set-key [f12] 'dired)
;; (global-set-key [f3] 'save-buffer)
;;   (global-set-key "\e[31~" 'save-as-file) ; S-f3
;;   (global-set-key [f13] 'save-as-file)
;; (global-set-key [f4] 'query-replace-regexp) ;C-M-%
;;   (global-set-key "\e[32~" 'isearch-forward-regexp) ; S-f4
;;   (global-set-key [f14] 'isearch-forward-regexp) ; C-M-s
;; (global-set-key [f5] 'rotate-buffer)
;; (global-set-key [f6] 'other-window)
;; (global-set-key [f7] 'shell)
;; (global-set-key [f8] 'switch-to-buffer)
;; (global-set-key [f9] 'goto-line)

(global-set-key [(f1)] 'kill-this-buffer)
(global-set-key [(shift f1)] 'kill-all-buffers)
(global-set-key [(f2)] 'find-file)
;;(global-set-key [(shift f2)] 'dired)
(global-set-key [(shift f2)] 'find-file-at-point)
(global-set-key [(f3)] 'save-buffer)
(global-set-key [(shift f3)] 'save-as-file)
(global-set-key [(f4)] 'query-replace-regexp) ;C-M-%
(global-set-key [(shift f4)] 'isearch-forward-regexp) ; C-M-s
(global-set-key [(f5)] 'rotate-buffer)
(global-set-key [(f6)] 'other-window)
(global-set-key [(f7)] 'shell)
(global-set-key [(f8)] 'switch-to-buffer)
(global-set-key [(f9)] 'goto-line)

(global-set-key (kbd "M-a") 'mark-whole-buffer) ; was backward-sentence.

;; Indenting and alignment
;; (global-set-key [(f11)]         'indent-region)
;; (global-set-key [(control f11)] 'align)
;; (global-set-key [(shift f11)]   'align-current)
;; (global-set-key [(meta f11)]    'align-regexp)

;; ibuffer > list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; rebind mark-word and mark-sexp for de-de keyboard
(global-set-key (kbd "C-#") 'mark-word)
(global-set-key (kbd "M-#") 'mark-sexp)

;; work with secure crt in terminal mode
;;(if (fboundp window-system)
;;  (global-set-key [f11] 'xterm-mouse-mode)
;;  (global-set-key "\010" 'delete-backward-char)
;;  (global-set-key "\e[3~" 'delete-char))

;;  (global-set-key "\e[7^" 'beginning-of-buffer)
;;  (global-set-key "\e[8^" 'end-of-buffer)


;; Repeat C-x z
;(global-set-key [(control z)] 'repeat) ; was suspend-frame

;; might be useful
;; switch between truncation and continuation mode for line wrapping:
;; (defun switch-truncation-continuation ()
;;   "Switch between truncation and continuation mode for line wrapping"
;;   (interactive)
;;   (setq truncate-lines (not truncate-lines))
;;   (setq truncate-partial-width-windows truncate-lines)
;;   ; changes to truncate-??? variables don't take effect immediately,
;;   ; so do something else to apply the changes:
;;   (font-lock-fontify-buffer))

