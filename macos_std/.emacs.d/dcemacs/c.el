;; tabs of 2 for perl
;; '(perl-indent-level 2)

(add-hook 'c-mode-hook
     (lambda ()
      (define-key c-mode-map "\"" 'electric-pair)
      (define-key c-mode-map "\'" 'electric-pair)
      (define-key c-mode-map "(" 'electric-pair)
      (define-key c-mode-map "[" 'electric-pair)
      (define-key c-mode-map "{" 'electric-pair)))
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))
