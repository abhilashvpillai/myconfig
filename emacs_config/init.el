(load-theme 'misterioso)
;;disable splash screen and startup message 
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil) 

;enable syntax highlight by default 
(global-font-lock-mode t) 
(setq font-lock-maximum-decoration t) 
(setq font-lock-maximum-size nil) 

;;disable line wrapping 
(setq-default truncate-lines t) 

;;disable autosave and backup 
(setq auto-save-default nil) 
(setq make-backup-files nil) 

;; Force to use spaces for tabs and to be 3 spaces 
(setq-default indent-tabs-mode nil) 
(setq-default tab-width 3) 

;;if you like aspell (http://aspell.net/win32/) instead of ispell,  
;;as said in a comment on blog 
;;http://edivad.wordpress.com/2007/03/20/emacs-widows-and-ispell/#comment-160 
;;correct the path in order to point to your aspell location 
;;(setq-default ispell-program-name "c:\\Program Files\\Aspell\\bin\\aspell.exe") 

;; fonts fixing for Debian etch (testing) bug 
;;(set-default-font "-Adobe-Courier-Medium-R-Normal-14-100-100-100-M-90-ISO8859-1") 
;;(set-face-font 'menu "-adobe-courier-medium-r-normal-14-100-100-100-m-90-iso8859-1") 
;;(set-face-font 'tooltip "-adobe-courier-medium-r-normal-14-100-100-100-m-90-iso8859-1") 

;;Move emacs a bit down and on the right in order to avoid a possible ugly 
;;windows bug. If you like to have the taskbar on top of the screen, sometimes 
;;emacs starts with the title bar under it. 
 (setq initial-frame-alist '((left . 50) (top . 50))) 

;;default attributes for text-mode 
 (setq text-mode-hook '(lambda () 
            (auto-fill-mode t) ;;physical line break 
            (flyspell-mode t) ;;spellchek on the fly 
            (ispell-change-dictionary "italiano" nil) 
            ) 
) 

;;default attributes for mail-mode 
 (setq mail-mode-hook '(lambda () 
            (auto-fill-mode t) ;;physical line break 
            (flyspell-mode t) ;;spellchek on the fly 
            (ispell-change-dictionary "italiano" nil) 
            ) 
) 

;;sets the file name as window title (for graphics emacs) 
 (set 'frame-title-format '(myltiple-frames "%b" ("" "%b"))) 

;;php-mode.el 
 (require 'php-mode)    ;;html-helper-mode 
 (autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t) 
 (setq auto-mode-alist (cons '("\\.jsp$" . html-helper-mode) auto-mode-alist)) ;;hhm for jsp files 
 (setq html-helper-never-indent t) 
;;disable auto-fill-mode and fly-spell-mode for hhm 
 (setq html-helper-mode-hook '(lambda () 
                               (auto-fill-mode nil) 
                               (flyspell-mode nil) 
                               (local-set-key "\t" 'self-insert-command) 
                             ) 
) 

;log4j mode 
;; (require 'jtags) 
;; (autoload 'log4j-mode "log4j-mode" "Major mode for viewing log files." t) 
;; (add-to-list 'auto-mode-alist '("\\.log\\'" . log4j-mode)) 

;;python-mode 
 (require 'python-mode) 
 (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist)) 
