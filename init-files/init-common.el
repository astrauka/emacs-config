(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun el-get-export-packages ()
  (interactive)
  `(setq my-packages
         ',(mapcar #'el-get-as-symbol
           (el-get-list-package-names-with-status "installed"))))

(provide 'init-common)
