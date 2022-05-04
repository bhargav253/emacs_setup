(global-set-key "\C-c\C-f" 'find-file-at-point)
; Go to line
(global-set-key "\C-c\C-g" 'goto-line)
; replace string
(global-set-key "\C-c\C-j" 'replace-string)
(global-set-key "\C-c\ j" 'string-insert-rectangle)
; List Match
(global-set-key "\C-c\C-m" 'occur)
; shell clear
(global-set-key (kbd "\C-x e") 'erase-buffer)
; shell open
(global-set-key (kbd "\C-x q") 'shell)

(global-set-key (kbd "\C-x o") 'select-next-window)
(global-set-key (kbd "\C-x i") 'select-previous-window)
(put 'erase-buffer 'disabled nil)

; set super as meta
(setq x-super-keysym 'meta)

; no help screen
(setq inhibit-startup-screen t)

; font mode
;(add-hook 'verilog-mode-hook 'turn-on-font-lock)
;(global-font-lock-mode t)
(global-set-key "\C-x\C-l" 'font-lock-mode)


; default screen
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 200))

;resize window by specific amount
(global-set-key (kbd "\C-c <right>") (lambda () (interactive) (enlarge-window-horizontally 35)))
(global-set-key (kbd "\C-c <left>") (lambda () (interactive) (shrink-window-horizontally 35)))
(global-set-key (kbd "\C-c <up>") (lambda () (interactive) (enlarge-window 5)))
(global-set-key (kbd "\C-c <down>") (lambda () (interactive) (shrink-window 5)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Window cycling
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun select-next-window ()
"Switch to the next window"
(interactive)
(select-window (next-window)))

(defun select-previous-window ()
"Switch to the previous window"
(interactive)
(select-window (previous-window)))

;resize window by specific amount
(add-to-list 'auto-mode-alist '("\\.ivg\\'" . verilog-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; color themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-theme 'manoj-dark)
;(add-to-list 'load-path "~/.emacs.d")
;(load "color-theme")
(let ((default-directory (expand-file-name "~/.emacs.d/lisp")))
(setq load-path
(append
(let ((load-path (copy-sequence load-path)))
(append
(copy-sequence (normal-top-level-add-to-load-path '(".")))
(normal-top-level-add-subdirs-to-load-path)))
load-path)))

(autoload 'qgrep "qgrep" "Quick grep" t)
(autoload 'qgrep-no-confirm "qgrep" "Quick grep" t)
(autoload 'qgrep-confirm "qgrep" "Quick grep" t)
(global-set-key (kbd "\C-c g") 'qgrep-no-confirm)
(global-set-key (kbd "\C-c G") 'qgrep-confirm)

;(require 'color-theme)
;(setq color-theme-is-global t)
;(color-theme-initialize)
;(color-theme-renegade)
(put 'downcase-region 'disabled nil)
