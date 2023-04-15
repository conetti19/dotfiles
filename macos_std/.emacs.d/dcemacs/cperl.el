;; (fset 'perl-mode 'cperl-mode)

;; Electric Pairs
;; (add-hook 'cperl-mode-hook
;;     (lambda ()
;;     (setq cperl-electric-parens nil))) ;; <------ electric parens!

;; tabs of 2 for perl
 '(perl-indent-level 2)

(add-hook 'perl-mode-hook
     (lambda ()
      (define-key perl-mode-map "\"" 'electric-pair)
      (define-key perl-mode-map "\'" 'electric-pair)
      (define-key perl-mode-map "(" 'electric-pair)
      (define-key perl-mode-map "[" 'electric-pair)
      (define-key perl-mode-map "{" 'electric-pair)))
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))
