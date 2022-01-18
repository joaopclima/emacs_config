(setq inhibit-startup-message t)

(global-linum-mode t)

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
(package-install 'use-package))

(use-package try
  :ensure t)

(use-package python-mode
  :ensure t)

(use-package which-key
  :ensure t
  :config(which-key-mode))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package all-the-icons
  :ensure t)
  
(use-package neotree
  :ensure t
  :config
  (progn 
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind(("C-\\". 'neotree-toggle)))

(use-package ace-window
  :ensure t
  :bind (("C-x o" . ace-window)))

(use-package rebecca-theme
  :ensure t
  :config (load-theme 'rebecca))

(use-package ergoemacs-mode
  :ensure t
  :config
  (progn
    (setq ergoemacs-theme nil)
    (setq ergoemacs-keyboard-layout "us")
    (ergoemacs-mode 1)))

(use-package vterm
  :ensure t)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7178dc309d5bb89e9de6feddd71058ddf8cb947bbf08ea6c7799a03ae690449e" default))
 '(package-selected-packages
   '(vterm persistent-soft ergoemacs-mode ace-window python-mode melancholy-theme all-the-icons neotree auto-complete which-key try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

