;;; custom.el -- is being loaded by prelude _before_ any other personal module
;;;
;;; Commentary:

;;; Code:

;;Code
;; require package:
;; (prelude-require-packages '(some-package some-other-package))

(require 'ergoemacs-mode)
(ergoemacs-ignore-prev-global) ; Do not honor previously defined global keys.
(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
(ergoemacs-mode 1)

(global-set-key (kbd "C-d") 'prelude-kill-whole-line)
(global-set-key (kbd "<f9>d") 'prelude-duplicate-current-line-or-region)
;; comment whole line: M-7 M-; (select-current-line + comment-dwim)

;; (load-theme 'solarized-dark t)
;; (disable-theme 'zenburn)


;; (setq whitespace-style '(face tabs empty trailing lines-tail))
(setq whitespace-style (delq 'lines-tail whitespace-style))

;; arrangements
(defun arrange-class ()
  "Arrange window for class - Latex"
  (interactive)
  (arrange-frame 100 40 10 10))

(defun arrange-center ()
  "Arrange window for shell operation"
  (interactive)
  (arrange-frame 170 40 5 1))

(defun arrange-frame (w h x y)
  "Set the width, height, and x/y position of the current frame"
  (interactive "p")
  (let ((frame (selected-frame)))
    (set-frame-position frame x y)
    (set-frame-height (selected-frame) h)
    (set-frame-width (selected-frame) w)))

(global-set-key (kbd "<f9>p") 'arrange-class)
(global-set-key (kbd "<f9>i") 'arrange-center)
(global-set-key (kbd "<f7>") 'recentf-open-files)

(global-set-key (kbd "<f9>e") 'eval-last-sexp)

;; set line wrapping
(defun enable-visual-line-mode ()
  (interactive) (unless visual-line-mode (visual-line-mode 1)) (message "Visual-Line mode enabled"))
(global-set-key (kbd "<f9>w") 'enable-visual-line-mode)

;;go to last edit point
(prelude-ensure-module-deps '(goto-last-change))
(require 'goto-last-change)
(global-set-key  (kbd "C-q") 'goto-last-change)


(setq prelude-guru nil)

;;I do need the menu!
(menu-bar-mode 1)

(provide 'custom)
;;; custom.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
