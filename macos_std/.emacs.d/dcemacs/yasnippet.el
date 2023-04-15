;;; Snippets make typing fun

(require 'dropdown-list)

(yas/global-mode 1)

;; (yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")
;; (yas/load-directory "~/.emacs.d/vendor/yasnippet/mysnippets")
;; Try this
(setq yas/root-directory '("~/.emacs.d/vendor/yasnippet/mysnippets"
                           "~/.emacs.d/vendor/yasnippet/snippets"))
;; Map `yas/load-directory' to every element
(mapc 'yas/load-directory yas/root-directory)

(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/completing-prompt
                             yas/ido-prompt))

;; Replace yasnippets's TAB
(add-hook 'yas/minor-mode-hook
          (lambda () (define-key yas/minor-mode-map
                       (kbd "TAB") 'smart-tab))) ; was yas/expand

