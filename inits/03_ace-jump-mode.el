(require 'ace-jump-mode)
(define-key global-map (kbd "C-;") 'ace-jump-mode)
(define-key global-map (kbd "C-u C-;") 'ace-jump-char-mode)
(define-key global-map (kbd "C-u C-u C-;") 'ace-jump-line-mode)
