(add-to-list 'load-path "~/.emacs.d/git-packages/emacs-async")
(add-to-list 'load-path "~/.emacs.d/git-packages/helm")
(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
(setq helm-M-x-fuzzy-match t)

(provide 'init-helm)
