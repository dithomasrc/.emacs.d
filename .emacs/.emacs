
 (package-initialize)
 (add-to-list 'package-archives
              '("melpa" . "http://melpa.milkbox.net/packages/"))
 (add-to-list 'package-archives
              '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
              '("marmalade" . "http://marmalade-repo.org/packages/"))


(setq url-proxy-services '(
                           ("http" . "usproxy.rockwellcollins.com:9090")
                           ("https" . "usproxy.rockwellcollins.com:9090")))

(global-unset-key (kbd "C-z"))
 (setq confirm-kill-emacs 'yes-or-no-p)         ; Confirm quit
(icomplete-mode t)                             ; Completion in mini-buffer

(load "~/.emacs.d/init/vhdl_init.el")

;;________________________________________________________________________________
;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

(let* ((org-dir (expand-file-name
                 "lisp" (expand-file-name
                         "org" (expand-file-name
                                "src" dotfiles-dir))))
       (org-contrib-dir (expand-file-name
                         "lisp" (expand-file-name
                                 "contrib" (expand-file-name
                                            ".." org-dir))))
       (load-path (append (list org-dir org-contrib-dir)
                          (or load-path nil))))
  ;; load up Org-mode and Org-babel
  (require 'org-install)
  (require 'ob-tangle))

;; load up all literate org-mode files in this directory
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;;; init.el ends here
;;________________________________________________________________________________














;; (defhydra hydra-helm-swoop (global-map "C-c")
;;   "swoop"
;;   ("s s" helm-swoop)
;;   ("s m" helm-swoop-multi "multi")
;;   ("s r" helm-swoop-pcre "pcre")
;;   ("s b" helm-swoop-back-to-last-position "back"))
;; 
;; 
;; (defhydra hydra-text (global-map "C-c")
;;   "text"
;;   ("t a" align-regexp "align")
;;   ("t c" flyspell-auto-correct-word "flyspell")
;;   ("t f" toggle-text-mode-auto-fill "auto-fill")
;;   ("t s" sort-lines "sort"))

;;Essentials 

;; Ace Jump Mode
;;    (require 'ace-jump-mode)
;;    (define-key global-map (kbd "C-;") 'ace-jump-mode)

;;(require 'ace-window)
;;    (define-key global-map (kbd "C-:") 'ace-window)
;; Ace Window https://github.com/abo-abo/ace-window
;;__________________________________________________________________________________________
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; Auto Complete
;;     (require 'auto-complete)
;;     (global-auto-complete-mode t)

;;Debug on error
(setq debug-on-error t)

;; Zone Mode http://www.emacswiki.org/emacs/ZoneMode
(require 'zone)
  (zone-when-idle 120)

;; Popwin
    (require 'popwin)
    (popwin-mode 1)

;; Confluence
  (require 'confluence)
  (setq confluence-url "http://alm.rockwellcollins.com/wiki/rpc/xmlrpc")

;; Org Mode 
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;MC Click options
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key (kbd "C-S-<mouse-3>") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-q") 'mc/edit-lines)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: helm              ;;
;;                            ;;
;; GROUP: Convenience -> Helm ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'helm)
(require 'helm-config)
(require 'helm-eshell)
(require 'helm-files)
(require 'helm-grep)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(define-key helm-grep-mode-map (kbd "<return>")  'helm-grep-mode-jump-other-window)
(define-key helm-grep-mode-map (kbd "n")  'helm-grep-mode-jump-other-window-forward)
(define-key helm-grep-mode-map (kbd "p")  'helm-grep-mode-jump-other-window-backward)

(setq
 helm-google-suggest-use-curl-p t
 helm-scroll-amount 4 ; scroll 4 lines other window using M-<next>/M-<prior>
 helm-quick-update t ; do not display invisible candidates
 helm-idle-delay 0.01 ; be idle for this many seconds, before updating in delayed sources.
 helm-input-idle-delay 0.01 ; be idle for this many seconds, before updating candidate buffer
 helm-ff-search-library-in-sexp t ; search for library in `require' and `declare-function' sexp.

 helm-split-window-default-side 'other ;; open helm buffer in another window
 helm-split-window-in-side-p t ;; open helm buffer inside current window, not occupy whole other window
 helm-buffers-favorite-modes (append helm-buffers-favorite-modes
                                     '(picture-mode artist-mode))
 helm-candidate-number-limit 200 ; limit the number of displayed canidates
 helm-M-x-requires-pattern 0     ; show all candidates when set to 0
 helm-boring-file-regexp-list
 '("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$" "\\._darcs$" "\\.la$" "\\.o$" "\\.i$") ; do not show these files in helm buffer
 helm-ff-file-name-history-use-recentf t
 helm-move-to-line-cycle-in-source t ; move to end or beginning of source
                                        ; when reaching top or bottom of source.
 ido-use-virtual-buffers t      ; Needed in helm-buffers-list
 helm-buffers-fuzzy-matching t          ; fuzzy matching buffer names when non--nil
                                        ; useful in helm-mini that lists buffers
 )

(projectile-global-mode)
(setq projectile-completion-system 'helm)
;;(helm-projectile-on)

(define-key helm-map (kbd "C-x 2") 'helm-select-2nd-action)
(define-key helm-map (kbd "C-x 3") 'helm-select-3rd-action)
(define-key helm-map (kbd "C-x 4") 'helm-select-4rd-action)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h s") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-c h m") 'helm-man-woman)
(global-set-key (kbd "C-c h f") 'helm-find)
(global-set-key (kbd "C-c h l") 'helm-locate)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-c h r") 'helm-resume)
(define-key 'help-command (kbd "C-f") 'helm-apropos)
(define-key 'help-command (kbd "r") 'helm-info-emacs)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c h x") 'helm-register)
(global-set-key (kbd "C-c h g") 'helm-google-suggest)
(global-set-key (kbd "C-c h h") 'helm-bookmarks)

;; use helm to list eshell history
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))

  ;;; Save current position to mark ring
(add-hook 'helm-goto-line-before-hook 'helm-save-current-pos-to-mark-ring)

(helm-mode 1)

;; Helm Swoop
(require 'helm)
(require 'helm-swoop)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Helm Projectile
(require 'helm-projectile)
(helm-projectile-on)
;; Helm Bookmarks 

;;elfeed
;;(setq elfeed-feeds
;;     '("http://nullprogram.com/feed/"
;;      "http://www.terminally-incoherent.com/blog/feed/"))
;; Eshell
(setenv "ESHELL" "/bin/csh")

;; Change keybinds to whatever you like :)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)

;; Golden Ratio Mode https://github.com/roman/golden-ratio.el
;;(require 'golden-ratio)
;;(golden-ratio-mode 1)
;;(setq golden-ratio-exclude-buffer-names '("*LV*"))

;;Key Freq
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

;; Helm flymake
  (require 'helm-config)
  (require 'helm-flymake)

;; Helm Descbinds
(require 'helm-descbinds)
(helm-descbinds-mode)

;;hlinum Rockwell
;;    (require 'hlinum)
;;    (hlinum-activate)
;;Spray Mode
(require 'spray)
(global-set-key (kbd "<f6>") 'spray-mode)

;;(global-set-key (kbd "s-s") 'spray-mode)

 (defhydra hydra-drag-stuff (global-map "s-r" :color red)
    "Drag Stuff"
    ("j" drag-stuff-down "line down" :color red)
    ("k" drag-stuff-up "line up" :color red)
    ("h" drag-stuff-left "word left" :color red)
    ("l" drag-stuff-right "word right" :color red)
    ("/" undo "undo" :color red)
    ("g" nil "blue" :cancel color))

(global-set-key (kbd "C-c C-v") 'hydra-toggle/body)
;; Drag-Stuff
;;(drag-stuff-global-mode t)

;; Tabbar
;;(tabbar-mode t)

;; Zop to Character
(require 'zop-to-char)
(global-set-key (kbd "M-z") 'zop-to-char)

;; ;; Highlight thing
;; (require 'highlight-thing)
;; (highlight-thing-mode)
;; (setq hlt-delay-seconds .1)


;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;;Split direction. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;;Orgmode
(require 'org)
(setq org-log-done t)
(setq org-catch-invisible-edits t)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))

(setq org-agenda-files (list "~/.org/red_hmi_todo.org" "~/org/*"))

(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

;; Org Template http://oremacs.com/2015/03/07/hydra-org-templates/
;;________________________________________________________________________
(defhydra hydra-org-template (:color blue :hint nil)
  "
_c_enter  _q_uote    _L_aTeX:
_l_atex   _e_xample  _i_ndex:
_a_scii   _v_erse    _I_NCLUDE:
_s_rc     ^ ^        _H_TML:
_h_tml    ^ ^        _A_SCII:
"
  ("s" (hot-expand "<s"))
  ("e" (hot-expand "<e"))
  ("q" (hot-expand "<q"))
  ("v" (hot-expand "<v"))
  ("c" (hot-expand "<c"))
  ("l" (hot-expand "<l"))
  ("h" (hot-expand "<h"))
  ("a" (hot-expand "<a"))
  ("L" (hot-expand "<L"))
  ("i" (hot-expand "<i"))
  ("I" (hot-expand "<I"))
  ("H" (hot-expand "<H"))
  ("A" (hot-expand "<A"))
  ("<" self-insert-command "ins")
  ("o" nil "quit"))

(defun hot-expand (str)
  "Expand org template."
  (insert str)
  (org-try-structure-completion))

(define-key org-mode-map "<"
  (lambda () (interactive)
     (if (looking-back "^")
         (hydra-org-template/body)
       (self-insert-command 1))))
;;________________________________________________________________________


;;http://doc.norang.ca/org-mode.html#OrgBabel
;;________________________________________________________________________
(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))

; Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)


; Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)

; Use fundamental mode when editing plantuml blocks with C-c '
(add-to-list 'org-src-lang-modes (quote ("plantuml" . plantuml-mode)))
;;________________________________________________________________________

;; Org Capture http://orgmode.org/manual/Setting-up-capture.html#Setting-up-capture
;;________________________________________________________________________
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

 (setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
             "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
             "* %?\nEntered on %U\n  %i\n  %a")))
;;________________________________________________________________________
;;
;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;;Uniquify 
(defun uniquify-region-lines (beg end)
    "Remove duplicate adjacent lines in region."
    (interactive "*r")
    (save-excursion
      (goto-char beg)
      (while (re-search-forward "^\\(.*\n\\)\\1+" end t)
        (replace-match "\\1"))))
  
  (defun uniquify-buffer-lines ()
    "Remove duplicate adjacent lines in the current buffer."
    (interactive)
    (uniquify-region-lines (point-min) (point-max)))
 ;; Visual Bell
 (setq visible-bell 1)

(define-key isearch-mode-map [remap isearch-delete-char] 'isearch-del-char)

(global-set-key "\M-n"  (lambda () (interactive) (scroll-up   4)) )
(global-set-key "\M-p"  (lambda () (interactive) (scroll-down 4)) )
(global-set-key "\M-N"  (lambda () (interactive) (scroll-up   10)) )
(global-set-key "\M-P"  (lambda () (interactive) (scroll-down 10)) )


 (load-theme 'wombat t)

;; Have Line Numbers on
(global-linum-mode 1)

;; Winner Mode
(winner-mode 1)

;; Delete like normal
(delete-selection-mode 1)

;;yes no to y n
(fset 'yes-or-no-p 'y-or-n-p)

;; Grab New-Line
(setq kill-whole-line t)

;;End sentences with a single space 
(setq sentence-end-double-space nil)

;; Goto line
(global-set-key (kbd "M-g") 'goto-line)

;;Buffer Scroll
(global-set-key (kbd "C-S-<mouse-4>") 'next-buffer)
(global-set-key (kbd "C-S-<mouse-5>") 'previous-buffer)
(global-set-key (kbd "C-S-n") 'next-buffer)
(global-set-key (kbd "C-S-p") 'previous-buffer)
 ;; Undo and Redo
     (define-key global-map (kbd "C-/") 'undo-tree-undo)
     (define-key global-map (kbd "C-x C-/") 'undo-tree-redo)

;; Inhibit start page:
(setq inhibit-startup-message t)

;; Guide-key
; (require 'guide-key)
; (setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "C-c h" "C-c p"))
; (guide-key-mode 1)  ; Enable guide-key-mode
; (setq guide-key/idle-delay 0.1)
;;Dired Single
 (require 'dired+)
 (require 'dired-single)
(toggle-diredp-find-file-reuse-dir 1)

;;Dired plus
   (define-key ctl-x-map   "d" 'diredp-dired-files)
   (define-key ctl-x-4-map "d" 'diredp-dired-files-other-window)

;;Smart Mode Line
(require 'smart-mode-line)
;;(sml/setup)
;;(setq sml/theme dark)

;; Undo?
(require 'undo-tree)
(global-undo-tree-mode 1)
(eval-after-load "diminish"
  '(progn
     (eval-after-load "undo-tree"
       '(diminish 'undo-tree-mode "?"))))

;; Terminal Colors Rockwell
;;(autoload 'color-theme-approximate-on "color-theme-approximate")
;;(color-theme-approximate-on)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; One-Key Macro
 (defun toggle-kbd-macro-recording-on ()
   "One-key keyboard macros: turn recording on."
   (interactive)
   (define-key
     global-map
     (this-command-keys)
     'toggle-kbd-macro-recording-off)
   (start-kbd-macro nil))

 (defun toggle-kbd-macro-recording-off ()
   "One-key keyboard macros: turn recording off."
   (interactive)
   (define-key
     global-map
     (this-command-keys)
     'toggle-kbd-macro-recording-on)
   (end-kbd-macro))

 (global-set-key '[(f1)]          'call-last-kbd-macro)
 (global-set-key '[(shift f1)]    'toggle-kbd-macro-recording-on)


(defun my-macro-query (arg)
      "Prompt for input using minibuffer during kbd macro execution.
    With prefix argument, allows you to select what prompt string to use.
    If the input is non-empty, it is inserted at point."
      (interactive "P")
      (let* ((query (lambda () (kbd-macro-query t)))
             (prompt (if arg (read-from-minibuffer "PROMPT: ") "Input: "))
             (input (unwind-protect
                        (progn
                          (add-hook 'minibuffer-setup-hook query)
                          (read-from-minibuffer prompt))
                      (remove-hook 'minibuffer-setup-hook query))))
        (unless (string= "" input) (insert input))))
 (global-set-key "\C-xQ" 'my-macro-query)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Window Size
(global-set-key (kbd "S-<up>") 'enlarge-window)
(global-set-key (kbd "S-<down>") 'shrink-window)
(global-set-key (kbd "S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-<left>") 'shrink-window-horizontally)


;;C_TAGS
(global-set-key (kbd "M-.") 'helm-c-etags-select)

;; FFAP
(global-set-key (kbd "S-<mouse-3>") 'ffap-at-mouse)

;;(add-to-list 'package-archives
;;             '("dsvn" "http://svn.apache.org/repos/asf/subversion/trunk/contrib/client-side/emacs/dsvn.el"))


;; Emacs setup
;(load-file "~/path/to/emacs-setup/emacs-setup.el")

  (defun create-tags (dir-name)
     "Create tags file."
     (interactive "DDirectory: ")
     (eshell-command 
      (format "find %s -type f -name \"*.[ch]\" | etags -" dir-name)))


;;  `info.el'.  So, in your `~/.emacs' file, do this:
 (eval-after-load "info" '(require 'info+))



(load "~/.emacs.d/downloads/nameses.el")
  (require 'desktop)
  (require 'nameses)

  (global-set-key (kbd "<f9>")     'nameses-load)
  (global-set-key (kbd "C-<f9>")   'nameses-prev)
  (global-set-key (kbd "C-S-<f9>") 'nameses-save)

;; Scrolling
;;  (sublimity-global-mode)
;;(setq sublimity-scroll-drift-length 1 sublimity-scroll-weight 4)
;;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;;CPerl Mode
 (defalias 'perl-mode 'cperl-mode)
 (setq cperl-hairy t) ;; Turns on most of the CPerlMode options
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
(add-hook 'cperl-mode-hook 'n-cperl-mode-hook t)
(defun n-cperl-mode-hook ()
  (setq cperl-indent-level 4)
  (setq cperl-continued-statement-offset 0)
  (setq cperl-extra-newline-before-brace t)
;;  (set-face-background 'cperl-array-face "wheat")
;;  (set-face-background 'cperl-hash-face "wheat")
  )

(add-hook 'cperl-mode-hook
          (lambda()
            (require 'perl-completion)
            (perl-completion-mode t)))

(add-hook 'cperl-mode-hook
  (lambda ()
    (require 'flymake)
    (flymake-mode 1) ;; use flymake
    (local-set-key (kbd "C-h f") 'cperl-perldoc))) ;; use perldoc instead of info on C-h f

;; Mouse Color
(set-mouse-color "white")


;; Ask before closing
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

;; Load after ediff-util.
(defun ediff-toggle-whitespace-sensitivity ()
  "Toggle whitespace sensitivity for the current EDiff run.

This does not affect the global EDiff settings.  The function
automatically updates the diff to reflect the change."
    (interactive)
    (let ((post-update-message
           (if (string-match " ?-w$" ediff-actual-diff-options)
               (progn
                 (setq ediff-actual-diff-options
                       (concat ediff-diff-options " " ediff-ignore-case-option)
                       ediff-actual-diff3-options
                       (concat ediff-diff3-options " " ediff-ignore-case-option3))
                 "Whitespace sensitivity on")
             (setq ediff-actual-diff-options
                   (concat ediff-diff-options " " ediff-ignore-case-option " -w")
                   ediff-actual-diff3-options
                   (concat ediff-diff3-options " " ediff-ignore-case-option3 " -w"))
             "Whitespace sensitivity off")))
      (ediff-update-diffs)
      (message post-update-message)))
  (add-hook 'ediff-keymap-setup-hook
            #'(lambda () (define-key ediff-mode-map [?W] 'ediff-toggle-whitespace-sensitivity)))
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)








;;Macros
(eval-after-load "macros" '(require 'macros+))
(define-key emacs-lisp-mode-map (kbd "C-c e") 'macrostep-expand)

;; Google this code in your .emacs file:
(require 'google-this)
(google-this-mode 1)
(global-set-key (kbd "C-x g") 'google-this-mode-submap)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(comment-style (quote multi-line))
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(cursor-color "#657b83")
 '(custom-safe-themes (quote ("756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "025354235e98db5e7fd9c1a74622ff53ad31b7bde537d290ff68d85665213d85" "ed81411169b1b3e3d4cfc39b09d68ea13e0ff7708dc5b9d0bedb319e071968ad" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "968d1ad07c38d02d2e5debffc5638332696ac41af7974ade6f95841359ed73e3" "2fa2edc14dbb434fa1a08262c088a337fc4bb3efc12c89fdb9a288620b58c6f0" "6fe6ab4abe97a4f13533e47ae59fbba7f2919583f9162b440dd06707b01f7794" "42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" default)))
 '(elfeed-feeds (quote ("http://feeds.feedburner.com/emacsblog" "http://nullprogram.com/feed/" "http://www.terminally-incoherent.com/blog/feed/")))
 '(erc-modules (quote (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring smiley stamp spelling track)))
 '(fci-rule-color "#383838")
 '(font-use-system-font t)
 '(foreground-color "#657b83")
 '(jira-url "http://alm.rockwellcollins.com/issues/browse/GSADC-29")
 '(jira-username dithomas)
 '(make-pointer-invisible nil)
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("/rfs/proj/gs_mos_mod_fpga_exrestricted/dithomas/MIDS_Terminal_Emulator/MOSMOD.org" "~/.org/red_hmi_todo.org")))
 '(org-catch-invisible-edits smart)
 '(org-plantuml-jar-path "/accts/dithomas/.emacs.d/elpa/contrib/scripts/plantuml.jar")
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote mailclient-send-it))
 '(socks-server (quote ("My socks server" "usproxy.rockwellcollins.com" 9090 4)))
 '(speedbar-fetch-etags-command "ctags")
 '(tool-bar-mode nil)
 '(user-full-name "Derek Thomas")
 '(whdl-highlight (quote (("project" (("cyan" ("q_.*" "i_.*")) ("yellow" ("n_.*" "d_.*")))) ("another project" (("cyan" ("generalram" "anotherword")) ("yellow" ("greenwitch" "yetanotherword"))))))))
 





;;   (ido-mode t)
;;   (setq ido-enable-flex-matching t)

   (require 'uniquify)
   (setq uniquify-buffer-name-style 'forward)

   (require 'saveplace)
   (setq-default save-place t)

   (global-set-key (kbd "M-/") 'hippie-expand)
   (global-set-key (kbd "C-x C-b") 'ibuffer)

   (global-set-key (kbd "C-s") 'isearch-forward-regexp)
   (global-set-key (kbd "C-r") 'isearch-backward-regexp)
   (global-set-key (kbd "C-M-s") 'isearch-forward)
   (global-set-key (kbd "C-M-r") 'isearch-backward)

   (show-paren-mode 1)
   (setq-default indent-tabs-mode nil)
   (setq x-select-enable-clipboard t
         x-select-enable-primary t
         save-interprogram-paste-before-kill t
         apropos-do-all t
         mouse-yank-at-point nil
         save-place-file (concat user-emacs-directory "places")
         backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                  "backups"))))

;;(provide 'better-defaults)
;;; better-defaults.el ends here
;; TO DO
;; Drag Mode
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; Next buffer
(global-set-key (kbd "M-`") 'other-window)

 ;; Theme Rockwell
;; (require 'color-theme)
;; (color-theme-initialize)



  (defun shk-yas/helm-prompt (prompt choices &optional display-fn)
    "Use helm to select a snippet. Put this into `yas/prompt-functions.'"
    (interactive)
    (setq display-fn (or display-fn 'identity))
    (if (require 'helm-config)
        (let (tmpsource cands result rmap)
          (setq cands (mapcar (lambda (x) (funcall display-fn x)) choices))
          (setq rmap (mapcar (lambda (x) (cons (funcall display-fn x) x)) choices))
          (setq tmpsource
                (list
                 (cons 'name prompt)
                 (cons 'candidates cands)
                 '(action . (("Expand" . (lambda (selection) selection))))
                 ))
          (setq result (helm-other-buffer '(tmpsource) "*helm-select-yasnippet"))
          (if (null result)
              (signal 'quit "user quit!")
            (cdr (assoc result rmap))))
      nil))

  (defun replace-last-sexp ()
    (interactive)
    (let ((value (eval (preceding-sexp))))
      (kill-sexp -1)
      (insert (format "%S" value))))

   (global-set-key (kbd "C-x e") 'replace-last-sexp)

(load "/accts/dithomas/.emacs.d/my_creations/flymake_mod.el") ;; Flymake with GHDL
;;(server-start)

