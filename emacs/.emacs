
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(markdown-open-command "/Users/suny/.emacs.d/plugins/open-markdown-marked.sh")
 '(package-selected-packages (quote (markdown-mode+ ace-window)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 

(add-to-list 'load-path "~/.emacs.d/3rds")

(setq-default cursor-type 'bar)

(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Monospace-14"))

;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions) 

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
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 200))

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
