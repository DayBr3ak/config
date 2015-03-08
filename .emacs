(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(standard-display-ascii ?\t "^I")
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)


(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4
                  indent-tabs-mode nil)

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 2)
            (setq indent-tabs-mode nil)))

(autoload 'js2-mode "js2-mode" nil t)
(autoload 'espresso-mode "espresso")
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(setq js-indent-level 4)
(setq js2-mode-hook
  '(lambda () (progn
    (set-variable 'indent-tabs-mode nil))))
