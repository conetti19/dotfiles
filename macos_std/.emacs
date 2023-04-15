(add-to-list 'load-path "~/.emacs.d")

(load "dcemacs")

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)

;; (when (member (getenv "TERM") '("linux" "xterm"))
;; (if (eq window-system nil)
;;   (dolist (prefix '("\eO" "\eO1;" "\e[1;"))
;;     (dolist (m '(("2" . "S-") ("3" . "M-") ("4" . "S-M-") ("5" . "C-")
;;                  ("6" . "S-C-") ("7" . "C-M-") ("8" . "S-C-M-")))
;;       (dolist (k '(("A" . "<up>") ("B" . "<down>") ("C" . "<right>")
;;                    ("D" . "<left>") ("H" . "<home>") ("F" . "<end>")))
;;         (define-key function-key-map
;;                     (concat prefix (car m) (car k))
;;                     (read-kbd-macro (concat (cdr m) (cdr k))))))))


;; '(x-select-enable-clipboard t)
;; '(x-select-enable-primary t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(uniquify-buffer-name-style 'forward nil (uniquify))
 '(warning-suppress-types '((initialization))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#F6F3E8" :inverse-video nil :box nil :strike-through nil :extend nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco")))))
