;; ===================================================================================
;;                                                                              System
;;                                                                              ======
;; japanese utf-8 environment
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default bidi-display-reordering nil)

(setq history-delete-duplicates t)

(setq set-mark-command-repeat-pop t)

(savehist-mode 1)

(setq inhibit-startup-message t)

(setq require-final-newline t)

(setq next-line-add-newlines nil)

(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

(setq history-length 10000)

(setq message-log-max 10000)

(savehist-mode 1)

(setq recentf-max-saved-items 10000)

(setq make-backup-files nil)

(setq delete-auto-save-files t)
;; 4ストロークごとに自動保存(デフォルト300)
(setq auto-save-interval 4)
;; 1秒のアイドルで自動保存(デフォルト30)
(setq auto-save-timeout 1)

(setq backup-inhibited t)

(setq-default tab-width 4 indent-tabs-mode nil)

;; show return
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;; メニューバー・ツールバー・スクロールバーを切る
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(line-number-mode 1)
(column-number-mode 1)

(global-linum-mode t)

; GCを減らして軽くする
(setq gc-cons-threshold (* 10 gc-cons-threshold))

(global-hl-line-mode t)

(show-paren-mode 1)

(global-whitespace-mode 0)
;; spell check

(setq-default flyspell-mode t)
(setq ispell-dictionary "american")

;; "yes or no" to  "y or n"
(fset 'yes-or-no-p 'y-or-n-p)


;; font
(set-face-attribute 'default nil
                    :family "Ricty Diminished"
                    :height 130)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons "Ricty" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons "Ricty" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons "Ricty" "iso10646-1"))
;; (add-to-list 'default-frame-alist '(font . "Ricty Diminished Discord-13"))

(display-time)

;; show last title
(setq skk-dcomp-activate t)

;; color theme
;; (require 'tomorrow-night-theme)
;; (load-theme 'zenburn t)
;; (load-theme 'solarized-dark t)
(load-theme 'atom-dark t)

(ffap-bindings)

;; ===================================================================================
;;                                                                         Keybindings
;;                                                                         ===========
;; exit
(require 'bind-key)
(bind-key* "C-h" 'backward-delete-char)
(require 'helm)
(bind-key "C-h" nil helm-map)
(global-unset-key (kbd "C-x C-c"))
(defalias 'exit 'save-buffers-kill-emacs)

(global-set-key (kbd "C-t") 'other-window)

(global-set-key (kbd "C-x C-b") 'bs-show)
