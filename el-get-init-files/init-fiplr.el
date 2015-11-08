(global-set-key (kbd "C-x f") 'fiplr-find-file)

(setq fiplr-ignored-globs '((directories (".git" "compiled" "target"))
                            (files ("*.jpg" "*.png" "*.zip" "*~" "#*"))))
