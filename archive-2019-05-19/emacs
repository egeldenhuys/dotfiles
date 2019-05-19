(let ((bootstrap-file (concat user-emacs-directory "straight/bootstrap.el"))
      (bootstrap-version 2))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;(setq straight-check-for-modifications 'live)
;(setq load-prefer-newer t)
(setq inhibit-startup-screen t)

;; Theme
(set-frame-font "Liberation Mono 12" nil t)
(straight-use-package 'dracula-theme)
(load-theme 'dracula t)

;; Disable menu bars
(menu-bar-mode -1)
(tool-bar-mode -1)
;(setq inhibit-startup-screen t)

;; Line numbers
(global-linum-mode t)

;; clang-format
(straight-use-package 'clang-format)
(global-set-key [C-M-tab] 'clang-format-buffer)

;; Backups and auto saves
(setq backup-directory-alist '(("" . "~/.emacs-backup/")))
(setq auto-save-file-name-transforms `((".*" ,"/home/evert/.emacs-saves/" t)))

;; Whitespace
(straight-use-package 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
(setq-default indent-tabs-mode nil)
(c-set-offset 'access-label -1)

;; YAML
(straight-use-package 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; TOML
(straight-use-package 'toml-mode)
;; company
;; http://company-mode.github.io/
(straight-use-package `company)

;; flycheck
(straight-use-package 'flycheck)

;; fly-check-irony
(straight-use-package 'flycheck-irony)
(eval-after-load 'flycheck
'(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; company-irony
;; https://github.com/Sarcasm/company-irony
(straight-use-package 'company-irony)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; irony-mode
;; https://github.com/Sarcasm/irony-mode
;; https://github.com/martin-tornqvist/env/blob/master/how-to-setup-irony-mode.txt
(straight-use-package 'irony)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; C/C++
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)

(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)

(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)

;; neo-tree
;; https://github.com/jaypei/emacs-neotree
(straight-use-package 'neotree)
(global-set-key [f8] 'neotree-show)
(setq-default neo-show-hidden-files t)

;; javadoc comments
;; https://www.emacswiki.org/emacs/DoxyMacs
;; Modified to indent less
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun advanced-return ()
  "Advanced `newline' command for comment.  This function redefine <Enter> to
provide a corrent comment symbol at each newline plus a space when you press
<Enter> in the comment.  It also support JavaDoc style comment -- insert a `*'
at the beggining of the new line if inside of a comment."
  (interactive "*")
  (let* ((last (point))
         (line-beginning (progn (beginning-of-line) (point)))
         (is-inside-java-doc
          (progn
            (goto-char last)
            (if (search-backward "*/" nil t)
                ;; there are some comment endings - search forward
                (search-forward "/*" last t)
              ;; it's the only comment - search backward
              (goto-char last)
              (search-backward "/*" nil t)
              )
            )
          )
         (is-inside-oneline-comment
          (progn
            (goto-char last)
            (search-backward comment-start line-beginning t)
            )
          )
         )

    ;; go to last char position
    (goto-char last)

    ;; the point is inside one line comment, insert the comment-start.
    (if is-inside-oneline-comment
        (progn
          (newline-and-indent)
          (insert comment-start)
          )
      ;; else we check if it is java-doc style comment.
      (if is-inside-java-doc
          (progn
            (newline)
            (insert "* ")
            (indent-according-to-mode)
            )
        ;; else insert only new-line
        (newline-and-indent)
        )
      )
      )
  )

;; TODO(Shuai) I have no idea why the hook does not work for lisp-mode, even if
;; advanced-return is added to the lisp-mode-hook directly.  However, I will
;; just settle for the moment since it works fine for almost all the remaining
;; prog modes.  What's more, it does not conflict with the autopair-newline
;; command that is binded to <RET>.  Though I am not sure why, maybe (newline)
;; is rebinded.
(add-hook 'prog-mode-hook
          (lambda ()
            (local-set-key (kbd "<RET>") 'advanced-return)))

;; https://github.com/rust-lang/rust-mode
;(add-to-list 'load-path "/home/evert/github/rust-mode")
;(autoload 'rust-mode "rust-mode" nil t)
;(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


