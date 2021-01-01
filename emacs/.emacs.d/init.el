(add-to-list 'load-path "~/.emacs.d/3rds")

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(global-linum-mode t) ;
(column-number-mode t) ;
(show-paren-mode t) ;
(global-hl-line-mode 1) ;

(setq auto-save-default nil) ;##
(setq backup-by-copying nil) ;~

;; 
(require 'auto-save)            
(auto-save-enable)              
(setq auto-save-slient t) 

;; Show full path of files
(setq frame-title-format
   (list (format "%s %%S: %%j " (system-name))
   '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Affiche le numéro de ligne et de colonne
(column-number-mode t)
(line-number-mode t)

;; sort of fullscreen
(add-to-list 'default-frame-alist '(left . 60))
(add-to-list 'default-frame-alist '(top . 40))
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 250))

;;open last file
(load "desktop") 
(desktop-load-default)
(desktop-read)
(add-hook 'kill-emacs-hook
          '(lambda()(desktop-save "~/")))
          
;; recently opened file
(require 'recentf)
(setq recentf-max-saved-items 100)
(recentf-mode 1)

;; add at the front of list, don't conncect to remote hosts
(add-to-list 'recentf-keep 'file-remote-p)


;; open .emacs
(global-set-key (kbd "M-h") (lambda () (interactive) (find-file "~/.emacs")))