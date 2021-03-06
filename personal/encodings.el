;;; encodings.el -- common init for tabbar operations
;;;
;;; Commentary:
;;; Code:
;; copy-paste from https://www.emacswiki.org/emacs/GnuEmacsRussification
;; Устанавливаем языковую среду
(set-language-environment 'Cyrillic-KOI8)
;; Устанавливаем кодировки по умолчанию для файлов, буферов и обмена с внешними программами
(setq default-buffer-file-coding-system 'koi8-r)
(prefer-coding-system 'koi8-r)
(define-coding-system-alias 'koi8-u 'koi8-r)
(set-terminal-coding-system 'koi8-r)
(set-keyboard-coding-system 'koi8-r)

(setq selection-coding-system 'koi8-r)
(setq default-process-coding-system
   (if (string> (substring emacs-version 0 2) "21") '(koi8-r . koi8-r) 'koi8-r))
(put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'koi8-r)
;; (codepage-setup 1251)  
(define-coding-system-alias 'windows-1251 'cp1251)
(define-coding-system-alias 'win-1251 'cp1251)


(modify-coding-system-alist 'file "\\.txt\\'" 'windows-1252)
(modify-coding-system-alist 'file "\\.org\\'" 'windows-1252)

(provide 'encodings)
