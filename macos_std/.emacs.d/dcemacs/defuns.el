;;; Personal functions

;; For loading libraries from the vendor directory
;; Modified from defunkt's original version to support autoloading.
;; http://github.com/defunkt/emacs/blob/master/defunkt/defuns.el
(defun vendor (library &rest autoload-functions)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el"))
         (personal (concat "~/.emacs.d/dcemacs/" file))
	 (found nil))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (set 'found t))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (set 'found t))
     ((file-exists-p suffix)  (set 'found t)))
    (when found
      (if autoload-functions
          (dolist (autoload-function autoload-functions)
            (autoload autoload-function (symbol-name library) nil t))
        (require library)))
    (when (file-exists-p (concat personal ".el"))
      (load personal))))

;; kill all buffers at once:
(defun kill-all-buffers ()
  "Kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x)) (buffer-list))
  (delete-other-windows))

;; save as file:
(defun save-as-file ()
  "Save as file"
  (interactive)
  (write-file
   (read-string "Save as:"
		(concat buffer-file-name ".")) t))

;; rotate buffers:
(defun rotate-buffer ()
  "Rotate buffer automatically"
  (interactive)
  (progn (bury-buffer) (switch-to-buffer (current-buffer))))

(require 'dired)
(defun extract-dfile ()
  "Extract a dfile"
  (interactive)
  (message "dfile %s" (dired-get-filename))
  (start-process "extract-dfile" "*Messages*" "dfile" "extractall" (dired-get-filename)))
(add-hook 'dired-mode-hook '(lambda () (local-set-key "r" 'extract-dfile)))

;; Make the whole buffer pretty and consistent
(defun iwb()
	"Indent Whole Buffer"
	(interactive)
	(delete-trailing-whitespace)
	(indent-region (point-min) (point-max) nil)
	(untabify (point-min) (point-max)))


;; Others to try out from Ryan

;; ;; Quickly jump back and forth between matching parens/brackets
;; (defun match-paren (arg)
;;   "Go to the matching parenthesis if on parenthesis."
;;   (interactive "p")
;;   (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
;;         ((looking-at "\\s\)") (forward-char 1) (backward-list 1))))
;;
;; (defun delete-window-replacement (&optional p)
;;   "Kill current window.  If called with PREFIX, kill the buffer too."
;;   (interactive "P")
;;   (if p
;;       (kill-buffer nil))
;;   (delete-window))
;;
;; (defun delete-other-windows-replacement (&optional p)
;;   "Make the selected window fill its frame.  If called with PREFIX,
;; kill all other visible buffers."
;;   (interactive "P")
;;   (if p
;;       (dolist (window (window-list))
;;         (unless (equal (window-buffer window) (current-buffer))
;;           (kill-buffer (window-buffer window)))))
;;   (delete-other-windows))
;;
;; (defun transpose-words (arg)
;;   "[Override for default transpose-words in simple.el]
;; Interchange words around point, leaving point at end of
;; them. With prefix arg ARG, effect is to take word before or
;; around point and drag it backward past ARG other words (forward
;; if ARG negative).  If ARG is zero, the words around or after
;; point and around or after mark are interchanged."
;;   (interactive "*p")
;;   (if (eolp) (forward-char -1))
;;   (transpose-subr 'backward-word arg)
;;   (forward-word (+ arg 1)))
