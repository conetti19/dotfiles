;;; Interactive do, find-file and iswitchb replacement with fuzzy/flex matching.

(ido-mode t)
;; try thes out later
;; (setq ido-enable-flex-matching t) ; fuzzy matching is a must have
;; (setq ido-enable-last-directory-history nil) ; forget latest selected directory names

;; (setq ido-show-dot-for-dired t)
;; (setq ido-default-file-method 'samewindow)
;; (setq ido-default-buffer-method 'samewindow)
(setq ido-confirm-unique-completion t)
(setq ido-create-new-buffer 'always)
;;(setq ido-max-dir-file-cache 20)
