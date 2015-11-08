(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
    (with-current-buffer
            (url-retrieve-synchronously
                     "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
                (goto-char (point-max))
                    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files")
(el-get 'sync)

(add-to-list 'load-path "~/.emacs.d/git-packages/evil-mc")
(require 'evil-mc)

(add-to-list 'load-path "~/.emacs.d/init-files")
(require 'init-evil-mc)
