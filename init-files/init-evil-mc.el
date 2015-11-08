(add-to-list 'load-path "~/.emacs.d/git-packages/evil-mc")
(require 'evil-mc)

(global-evil-mc-mode  1)
(global-set-key (kbd "C-c C-c") 'evil-mc-make-all-cursors)
(global-set-key (kbd "C-c C-u") 'evil-mc-undo-all-cursors)
(defun evil-mc-make-cursor-next-line ()
  "Evil multiple cursors add cursor on next line"
  (interactive)
  (evil-mc-make-cursor-here)
  (evil-mc-pause-cursors)
  (next-line)
  (evil-mc-make-cursor-here)
  (evil-mc-resume-cursors))

(defun evil-mc-make-cursor-previous-line ()
  "Evil multiple cursors add cursor on previous line"
  (interactive)
  (evil-mc-make-cursor-here)
  (evil-mc-pause-cursors)
  (previous-line)
  (evil-mc-make-cursor-here)
  (evil-mc-resume-cursors))

(global-set-key (kbd "C-c C-j") 'evil-mc-make-cursor-next-line)
(global-set-key (kbd "C-c C-k") 'evil-mc-make-cursor-previous-line)

(provide 'init-evil-mc)
