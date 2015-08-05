;; -*- Mode: Emacs-Lisp -*-

;;; The .emacs file, which should reside in your home directory, allows you to
;;; customize the behavior of Emacs.  In general, changes to your .emacs file
;;; will not take effect until the next time you start up Emacs.  You can load
;;; it explicitly with `M-x load-file RET ~/.emacs RET'.
;;;
;;; There is a great deal of documentation on customization in the Emacs
;;; manua l.  You can read this manual with the online Info browser: type
;;; `C-h i' or select "Emacs Info" from the "Help" menu.v.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;			Basic Customization			    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;=============================================================================
;; scroll on mouse wheel
;;=============================================================================

;; scroll on wheel of mouses
(define-key global-map 'button4
'(lambda (&rest args)
(interactive) 
(let ((curwin (selected-window)))
(select-window (car (mouse-pixel-position)))
(scroll-down 5)
(select-window curwin)
)))
(define-key global-map [(shift button4)]
'(lambda (&rest args)
(interactive) 
(let ((curwin (selected-window)))
(select-window (car (mouse-pixel-position)))
(scroll-down 1)
(select-window curwin)
)))
(define-key global-map [(control button4)]
'(lambda (&rest args)
(interactive) 
(let ((curwin (selected-window)))
(select-window (car (mouse-pixel-position)))
(scroll-down)
(select-window curwin)
)))

(define-key global-map 'button5
'(lambda (&rest args)
(interactive) 
(let ((curwin (selected-window)))
(select-window (car (mouse-pixel-position)))
(scroll-up 5)
(select-window curwin)
)))
(define-key global-map [(shift button5)]
'(lambda (&rest args)
(interactive) 
(let ((curwin (selected-window)))
(select-window (car (mouse-pixel-position)))
(scroll-up 1)
(select-window curwin)
)))
(define-key global-map [(control button5)]
'(lambda (&rest args)
(interactive) 
(let ((curwin (selected-window)))
(select-window (car (mouse-pixel-position)))
(scroll-up)
(select-window curwin)
)))



;; begin what-env

(defvar what-env "Spanish_Inquisition"
"A string value which indicates the current windowing environment, one of \"Windows_95\", \"Windows_NT\", \"X10_windows\", \"X11_windows\", \"console\", or something nobody expects. If it comes up \"Spanish_Inquisition\", you have not run logic to set it. If it comes up nil you are on something completely different.")

;; Part of the process of changing from Emacs version 19 to 20 was to
;; change all win32* variable names to w32*. To allow this code to run on
;; both 19 and 20, a test for either is necessary. That is why I have the
;; phrase "(memq window-system '(win32 w32))" (suggested by Jari Aalto) in
;; there. Grump.

(setq what-env (or
	       (and(eq window-system 'nil)
		   "console")
	       (and (memq window-system '(mswindows))
		    (or (getenv "OS") "winxp"))
	       (and (eq window-system 'x)
		    "X" )
	       ))

;; end what-env.
;;(princ window-system-version)
;(require 'gnuserv)
;(gnuserv-start)

(if (string-equal what-env "X") 
   (defvar root_path "~dwhill/")
  (defvar root_path "u:\\")
)
;;(princ "root_path = ")
;;(princ root_path)
;;(princ "enviroment_variable")
;;(princ what-env)
;;(princ (concat root_path ".emacsdir"))

;;  Get dired to work.... in rchland 
;;(setq dired-ls-program "/bin/ls")
;;(setq dired-listing-switches "-alp")

;;(setq load-path (append load-path (cons (expand-file-name "~dwhill/.emacsdir") '()) ))
(setq load-path (append load-path (cons (expand-file-name (concat root_path ".emacsdir")) '()) ))
(setq load-path (cons (expand-file-name (concat root_path "vhdl_mode")) load-path))
;;(setq load-path (cons (expand-file-name (concat root_path "clearcase")) load-path))
     ;;(setq load-path (cons (expand-file-name "~skarphol/.emacsdir/vhdl-mode-3.31.24") load-path))
;;     (setq load-path (cons (expand-file-name "~skarphol/.emacsdir/vhdl-mode-3.32.3") load-path))
;;     (setq load-path (cons (expand-file-name "~skarphol/.emacsdir/vhdl-mode-3.32.11") load-path))
;;     (autoload 'vhdl-mode "vhdl-mode" "VHDL Editing Mode" t)

;;     (setq load-path (cons (expand-file-name "~dwhill/.emacsdir/verilog-mode-3.54") load-path))
;     (setq load-path (cons (expand-file-name (concat root_path ".emacsdir/verilog-mode-3.54")) load-path))
  ;;   (autoload 'verilog-mode "verilog-mode" "Verilog Editing Mode" t)
 (autoload 'verilog-mode "verilog-mode" "Verilog mode" t )
 (setq auto-mode-alist (cons  '("\\.v\\'" . verilog-mode) auto-mode-alist))
 (setq auto-mode-alist (cons  '("\\.dv\\'" . verilog-mode) auto-mode-alist))
 (setq auto-mode-alist (cons  '("\\.svh\\'" . verilog-mode) auto-mode-alist))
 (setq auto-mode-alist (cons  '("\\.sv\\'" . verilog-mode) auto-mode-alist))


;;     (setq auto-mode-alist
;;       (append
;;        '(("\\.sv$" . verilog-mode)
;;          ) auto-mode-alist))

;;;     (setq auto-mode-alist (append '(("\\.vhdl?$" . vhdl-mode)) auto-mode-alist))
;;;
;;; VHDL mode
;;;
(autoload 'vhdl-mode "vhdl-mode" "VHDL Mode" t)
(setq auto-mode-alist (cons '("\\.vhdl?\\'" . vhdl-mode) auto-mode-alist))
     (setq auto-mode-alist
       (append
         '(("\\.vhd$" . vhdl-mode)
          ) auto-mode-alist))

     (setq auto-mode-alist
       (append
         '(("\\.vhdl$" . vhdl-mode)
          ) auto-mode-alist))
;;Modes needed for RCH macro_VHDL
;;     (setq auto-mode-alist
;;       (append
;;        '(("\\.v$" . vhdl-mode)
;;          ) auto-mode-alist))
;;     (setq auto-mode-alist
;;       (append
;;         '(("\\.vhexp$" . vhdl-mode)
;;          ) auto-mode-alist))
;;     (setq auto-mode-alist
;;       (append
;;         '(("\\.iodesc$" . vhdl-mode)
;;         ) auto-mode-alist))

;;--------------------------------------------------------------
;; This is needed to view rochester macro vhdl as a vhdl file.  
;;The file extention is .v for vhdl macro  In order to use it, 
;;the verilog stuff mut be commented out.  Both have .v extentions
;;--------------------------------------------------------------
;(setq auto-mode-alist (cons '("\\.v\\'" . verilog-mode) auto-mode-alist))
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))
;;(setq auto-mode-alist
;;       (append
;;         '(("\\.v$" . verilog-mode)
;;          ) auto-mode-alist))


;;;Pager provides new scroll-commands. Emacs builtins (scroll-down and scroll-up) sucks!! 
;;With these commands a page-up followed by a page-down command will return the point to
;;;same place where it was before the page-up command. 

;;Also commands for scrolling one row at the time are provided. Very useful! 
;; ----------------------------------------------------------------------
;;; Description:
;;;
;;; pager.el defines alternative commands to the Emacs builtins: scroll-down
;;; and scroll-up.  It also contains commands to scroll the screen one row at
;;; the time.
;;;
;;; The Emacs builtins for scrolling are worthless!  The commands in pager.el
;;; works the way the builtins should have done from the beginning.  For
;;; instance, doing a pg-up followed by a pg-down (when using pager.el) will
;;; return point to the original place.  
;;;
;;; This file has been tested under Emacs 19.34 and 20.2 but I belive it should
;;; work on most Emacs versions and Emacs derivatives.
;;;
;;; This file can be obtained from http://www.docs.uu.se/~mic/emacs.html

;;; ----------------------------------------------------------------------
;;; Installation:
;;;
;;; o Place this file in a directory in your load-path.
;;; o Put the following in your .emacs file:
;;;     (require 'pager)
;;;     (global-set-key "\C-v"     'pager-page-down)
;;;     (global-set-key [next]     'pager-page-down)
;;;     (global-set-key "\ev"      'pager-page-up)
;;;     (global-set-key [prior]    'pager-page-up)
;;;     (global-set-key '[M-up]    'pager-row-up)
;;;     (global-set-key '[M-kp-8]  'pager-row-up)
;;;     (global-set-key '[M-down]  'pager-row-down)
;;;     (global-set-key '[M-kp-2]  'pager-row-down)
;;; o Restart your Emacs. 
;;; o pager.el is now installed.  Use the normal keys to scroll a full page and
;;;   M-up resp. M-down to scroll just one row up or down.

;;; ----------------------------------------------------------------------
;
(require 'pager)
(global-set-key [(control v)]    'pager-page-down)
(global-set-key [next]           'pager-page-down)
(global-set-key "\ev"      'pager-page-up)
(global-set-key [(meta v)]       'pager-page-up)
(global-set-key [(prior)]        'pager-page-up)
(global-set-key [meta-up]       'pager-row-up)
(global-set-key [(meta kp-8)]   'pager-row-up)
(global-set-key [(meta down)]   'pager-row-down)
(global-set-key [(meta kp-2)]   'pager-row-down) 

;;; Description:
;;
;;  This package provides a way to reuse the current dired buffer to visit
;;  another directory (rather than creating a new buffer for the new directory).
;;  Optionally, it allows the user to specify a name that all such buffers will
;;  have, regardless of the directory they point to.



     (require 'dired-single)

;;--------------------------------------------------------------
;; Change base colors
;;--------------------------------------------------------------
(set-face-background 'default                 "black")
(set-face-foreground 'default                 "snow")
(set-face-background 'modeline                "midnightblue")
(set-face-background 'primary-selection       "yellow")
(set-face-background 'isearch                 "red")
(set-face-foreground 'modeline                "cyan")
(setq x-pointer-background-color              "black")
(setq x-pointer-foreground-color              "red")

;; Enable the command `narrow-to-region' ("C-x n n"), a useful
;; command, but possibly confusing to a new user, so it's disabled by
;; default.
(put 'narrow-to-region 'disabled nil)
(put 'eval-expression  'disabled nil)



;;  Enable GNUSERV
;;(require 'gnuserv)
;;(gnuserv-start)


;;; Define a variable to indicate whether we're running XEmacs/Lucid Emacs.
;;; (You do not have to defvar a global variable before using it --
;;; you can just call `setq' directly like we do for `emacs-major-version'
;;; below.  It's clearer this way, though.)

(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;; Key binding for revert file
(global-set-key "\C-c\C-r" 'revert-buffer)

;; Make the sequence "C-x w" execute the `what-line' command, 
;; which prints the current line number in the echo area.
(global-set-key "\C-xw" 'what-line)

;; set up the function keys to do common tasks to reduce Emacs pinky
;; and such.
(global-set-key 'f1 'advertised-undo) ;; Undo
(global-set-key 'f2 'kill-primary-selection) ;; Cut
(global-set-key 'f3 'copy-primary-selection) ;; Copy
(global-set-key 'f4 'yank-clipboard-selection) ;; Paste
(global-set-key 'f5 'find-file) ;; C-x C-f
(global-set-key 'f7 'save-buffer) ;; C-x C-s

;; Make F1 invoke help
;;(global-set-key [f1] 'help-command)
;; Make F2 be `undo'
;;(global-set-key [f2] 'undo)
;; Make F3 be `find-file'
;; Note: it does not currently work to say
;;   (global-set-key 'f3 "\C-x\C-f")
;; The reason is that macros can't do interactive things properly.
;; This is an extremely longstanding bug in Emacs.  Eventually,
;; it will be fixed. (Hopefully ..)
;;(global-set-key [f3] 'find-file)

;; Make F4 be "mark", F5 be "copy", F6 be "paste"
;; Note that you can set a key sequence either to a command or to another
;; key sequence.
;;(global-set-key [f4] 'save-buffer)
;;(global-set-key [f4] 'set-mark-command)
;;(global-set-key [f5] "\M-w")
;;(global-set-key [f6] "\C-y")
;;(global-set-key [f6] "\C-w")

;; Shift-F4 is "pop mark off of stack"
(global-set-key [(shift f4)] (lambda () (interactive) (set-mark-command t)))

;; Make F7 be `save-buffer'
;;(global-set-key [f7] 'save-buffer)
;;(global-set-key [f7] "\C-y")

;; Make F8 be "start macro", F9 be "end macro", F10 be "execute macro"
;;(global-set-key [f8] 'start-kbd-macro)
;;(global-set-key [f9] 'end-kbd-macro)
;;(global-set-key [f10] 'call-last-kbd-macro)
;; Go to line
(global-set-key [f8] "\M-g")
;; Search and Replace
(global-set-key [f9] "\C-%")
;; Reg Exp Search and Replace
(global-set-key [f10] "\C-\M-%")

;; Here's an alternative binding if you don't use keyboard macros:
;; Make F8 be `save-buffer' followed by `delete-window'.
;;(global-set-key 'f8 "\C-x\C-s\C-x0")

;; If you prefer delete to actually delete forward then you want to
;; uncomment the next line (or use `Customize' to customize this).
 (setq delete-key-deletes-forward t)

;;; pending-delete-mode causes typed text to replace a selection,
;;; rather than append -- standard behavior under all window systems
;;; nowadays.

(if (fboundp 'pending-delete-mode)
    (pending-delete-mode 1))

(cond (running-xemacs
       ;;
       ;; Code for any version of XEmacs/Lucid Emacs goes here
       ;;

       ;; Change the values of some variables.
       ;; (t means true; nil means false.)
       ;;
       ;; Use the "Describe Variable..." option on the "Help" menu
       ;; to find out what these variables mean.
       (setq find-file-use-truenames nil
	     find-file-compare-truenames t
	     minibuffer-confirm-incomplete t
	     complex-buffers-menu-p t
	     next-line-add-newlines nil
	     mail-yank-prefix "> "
	     kill-whole-line t
	     dired-no-confirm '(revert-subdirs)
	     )

       ;; When running ispell, consider all 1-3 character words as correct.
       (setq ispell-extra-args '("-W" "3"))

       (cond ((or (not (fboundp 'device-type))
		  (equal (device-type) 'x)
		  (equal (device-type) 'mswindows))
	      ;; Code which applies only when running emacs under X or
	      ;; MicroSoft Windows goes here.  (We check whether the
	      ;; function `device-type' exists before using it.  In
	      ;; versions before 19.12, there was no such function.
	      ;; If it doesn't exist, we simply assume we're running
	      ;; under X -- versions before 19.12 only supported X.)

	      ;; Remove the binding of C-x C-c, which normally exits emacs.
	      ;; It's easy to hit this by mistake, and that can be annoying.
	      ;; Under X, you can always quit with the "Exit Emacs" option on
	      ;; the File menu.
;;	      (global-set-key "\C-x\C-c" nil)

	      ;; Uncomment this to enable "sticky modifier keys" in 19.13
	      ;; and up.  With sticky modifier keys enabled, you can
	      ;; press and release a modifier key before pressing the
	      ;; key to be modified, like how the ESC key works always.
	      ;; If you hold the modifier key down, however, you still
	      ;; get the standard behavior.  I personally think this
	      ;; is the best thing since sliced bread (and a *major*
	      ;; win when it comes to reducing Emacs pinky), but it's
	      ;; disorienting at first so I'm not enabling it here by
	      ;; default.

	      (setq modifier-keys-are-sticky t)

	      ;; This changes the variable which controls the text that goes
	      ;; in the top window title bar.  (However, it is not changed
	      ;; unless it currently has the default value, to avoid
	      ;; interfering with a -wn command line argument I may have
	      ;; started emacs with.)
	      (if (equal frame-title-format "%S: %b")
		  (setq frame-title-format
			(concat "%S: " invocation-directory invocation-name
				" [" emacs-version "]"
				(if nil ; (getenv "NCD")
				    ""
				  "   %b"))))

	      ;; If we're running on display 0, load some nifty sounds that
	      ;; will replace the default beep.  But if we're running on a
	      ;; display other than 0, which probably means my NCD X terminal,
	      ;; which can't play digitized sounds, do two things: reduce the
	      ;; beep volume a bit, and change the pitch of the sound that is
	      ;; made for "no completions."
	      ;;
	      ;; (Note that sampled sounds only work if XEmacs was compiled
	      ;; with sound support, and we're running on the console of a
	      ;; Sparc, HP, or SGI machine, or on a machine which has a
	      ;; NetAudio server; otherwise, you just get the standard beep.)
	      ;;
	      ;; (Note further that changing the pitch and duration of the
	      ;; standard beep only works with some X servers; many servers
	      ;; completely ignore those parameters.)
	      ;;
	      (cond ((or (and (getenv "DISPLAY") 
			      (string-match ":0" (getenv "DISPLAY")))
			 (and (eq (console-type) 'mswindows)
			      (device-sound-enabled-p)))
		     (load-default-sounds))
		    (t
		     (setq bell-volume 10)
		     (setq sound-alist
			   (append sound-alist '((no-completion :pitch 500))))
		     ))

	      ;; Make `C-x C-m' and `C-x RET' be different (since I tend
	      ;; to type the latter by accident sometimes.)
	      (define-key global-map [(control x) return] nil)

	      ;; Change the pointer used when the mouse is over a modeline
;	      (set-glyph-image modeline-pointer-glyph "leftbutton")

	      ;; Change the continuation glyph face so it stands out more
	      (and (fboundp 'make-face-bold)
		   (boundp 'continuation-glyph)
		   (make-face-bold (glyph-face continuation-glyph)))

	      ;; Change the pointer used during garbage collection.
	      ;;
	      ;; Note that this pointer image is rather large as pointers go,
	      ;; and so it won't work on some X servers (such as the MIT
	      ;; R5 Sun server) because servers may have lamentably small
	      ;; upper limits on pointer size.
	      ;;(if (featurep 'xpm)
	      ;;   (set-glyph-image gc-pointer-glyph
	      ;;	 (expand-file-name "trash.xpm" data-directory)))

	      ;; Here's another way to do that: it first tries to load the
	      ;; pointer once and traps the error, just to see if it's
	      ;; possible to load that pointer on this system; if it is,
	      ;; then it sets gc-pointer-glyph, because we know that
	      ;; will work.  Otherwise, it doesn't change that variable
	      ;; because we know it will just cause some error messages.
	      (if (featurep 'xpm)
		  (let ((file (expand-file-name "recycle.xpm" data-directory)))
		    (if (condition-case error
			    ;; check to make sure we can use the pointer.
			    (make-image-instance file nil
						 '(pointer))
			  (error nil))	    ; returns nil if an error occurred.
			(set-glyph-image gc-pointer-glyph file))))

	      (when (featurep 'menubar)
		;; Add `dired' to the File menu
		(add-menu-button '("File") ["Edit Directory" dired t])

		;; Here's a way to add scrollbar-like buttons to the menubar
		(add-menu-button nil ["Top" beginning-of-buffer t])
		(add-menu-button nil ["<<<" scroll-down         t])
		(add-menu-button nil [" . " recenter            t])
		(add-menu-button nil [">>>" scroll-up           t])
		(add-menu-button nil ["Bot" end-of-buffer       t]))

	      ;; Change the behavior of mouse button 2 (which is normally
	      ;; bound to `mouse-yank'), so that it inserts the selected text
	      ;; at point (where the text cursor is), instead of at the
	      ;; position clicked.
	      ;;
	      ;; Note that you can find out what a particular key sequence or
	      ;; mouse button does by using the "Describe Key..." option on
	      ;; the Help menu.
	      (setq mouse-yank-at-point t)

	      ;; When editing C code (and Lisp code and the like), I often
	      ;; like to insert tabs into comments and such.  It gets to be
	      ;; a pain to always have to use `C-q TAB', so I set up a more
	      ;; convenient binding.  Note that this does not work in
	      ;; TTY frames, where tab and shift-tab are indistinguishable.
	      (define-key global-map '(shift tab) 'self-insert-command)

	      ;; LISPM bindings of Control-Shift-C and Control-Shift-E.
	      ;; Note that "\C-C" means Control-C, not Control-Shift-C.
	      ;; To specify shifted control characters, you must use the
	      ;; more verbose syntax used here.
	      (define-key emacs-lisp-mode-map '(control C) 'compile-defun)
	      (define-key emacs-lisp-mode-map '(control E) 'eval-defun)

	      ;; If you like the FSF Emacs binding of button3 (single-click
	      ;; extends the selection, double-click kills the selection),
	      ;; uncomment the following:

	      ;; Under 19.13, the following is enough:
              ;(define-key global-map 'button3 'mouse-track-adjust)

	      ;; But under 19.12, you need this:
              ;(define-key global-map 'button3
              ;    (lambda (event)
              ;      (interactive "e")
              ;      (let ((default-mouse-track-adjust t))
              ;        (mouse-track event))))

	      ;; Under both 19.12 and 19.13, you also need this:
              ;(add-hook 'mouse-track-click-hook
              ;          (lambda (event count)
              ;            (if (or (/= (event-button event) 3)
              ;                    (/= count 2))
              ;                nil ;; do the normal operation
              ;              (kill-region (point) (mark))
              ;              t ;; don't do the normal operations.
              ;              )))

	      ))

       ))

;; Oh, and here's a cute hack you might want to put in the sample .emacs
;; file: it changes the color of the window if it's not on the local
;; machine, or if it's running as root:

;; local emacs background:  whitesmoke
;; remote emacs background: palegreen1
;; root emacs background:   coral2
(cond
 ((and (string-match "XEmacs" emacs-version)
       (eq window-system 'x)
       (boundp 'emacs-major-version)
       (= emacs-major-version 19)
       (>= emacs-minor-version 12))
  (let* ((root-p (eq 0 (user-uid)))
	 (dpy (or (getenv "DISPLAY") ""))
	 (remote-p (not
		    (or (string-match "^\\(\\|unix\\|localhost\\):" dpy)
			(let ((s (system-name)))
			  (if (string-match "\\.\\(netscape\\|mcom\\)\\.com" s)
			      (setq s (substring s 0 (match-beginning 0))))
			  (string-match (concat "^" (regexp-quote s)) dpy)))))
	 (bg (cond (root-p "coral2")
		   (remote-p "whitesmoke")
		   (t nil))))
    (cond (bg
	   (let ((def (color-name (face-background 'default)))
		 (faces (face-list)))
	     (while faces
	       (let ((obg (face-background (car faces))))
		 (if (and obg (equal def (color-name obg)))
		     (set-face-background (car faces) bg)))
	       (setq faces (cdr faces)))))))))


;;; Older versions of emacs did not have these variables
;;; (emacs-major-version and emacs-minor-version.)
;;; Let's define them if they're not around, since they make
;;; it much easier to conditionalize on the emacs version.

(if (and (not (boundp 'emacs-major-version))
	 (string-match "^[0-9]+" emacs-version))
    (setq emacs-major-version
	  (string-to-int (substring emacs-version
				    (match-beginning 0) (match-end 0)))))
(if (and (not (boundp 'emacs-minor-version))
	 (string-match "^[0-9]+\\.\\([0-9]+\\)" emacs-version))
    (setq emacs-minor-version
	  (string-to-int (substring emacs-version
				    (match-beginning 1) (match-end 1)))))

;;; Define a function to make it easier to check which version we're
;;; running.

(defun running-emacs-version-or-newer (major minor)
  (or (> emacs-major-version major)
      (and (= emacs-major-version major)
	   (>= emacs-minor-version minor))))

(cond ((and running-xemacs
	    (running-emacs-version-or-newer 19 6))
       ;;
       ;; Code requiring XEmacs/Lucid Emacs version 19.6 or newer goes here
       ;;
(setq Info-auto-advance t)
;;; RSC the next line allows X resources to be set in ~/Emacs for the frame called "vhdl"
(setq default-frame-plist '(width 80 height 55 name "vhdl"))
       ))

(cond ((>= emacs-major-version 19)
       ;;
       ;; Code for any vintage-19 emacs goes here
       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-ch" 'hexl-find-file)
(global-set-key "\C-c%" 'blink-matching-open)
(setq ispell-program-name "/usr/bin/ispell")
;;(setq ispell-program-name "/usr/local/bin/ispell")
(put 'narrow-to-region 'disabled nil)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(require 'filladapt)
(add-hook 'text-mode-hook 'turn-on-filladapt-mode)
;; (add-hook 'find-file-hooks 'turn-on-font-lock)
;; (add-hook 'c-mode-hook 'turn-on-font-lock)
(put 'downcase-region 'disabled nil)

 (load "bubble" nil t)                ; or autoload the two commands
 (global-set-key [f12] 'bubble-buffer) ; or some such pair of keys
 (global-set-key [f11] 'bubble-buffer-back)
       ))

(cond ((and (not running-xemacs)
	    (>= emacs-major-version 19))
       ;;
       ;; Code specific to FSF Emacs 19 (not XEmacs/Lucid Emacs) goes here
       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(server-start)

;; Added 4/28/97, RSC

;;;(setq debug-on-error t)

;;;     (setq load-path (cons (expand-file-name "~skarphol/.emacsdir/vhdl-mode-3.32.3") load-path))
;;;     (setq load-path (cons (expand-file-name "~skarphol/.emacsdir/vhdl-mode-3.32.11") load-path))
;;;     (autoload 'vhdl-mode "vhdl-mode" "VHDL Editing Mode" t)
;;;     (setq auto-mode-alist (append '(("\\.vhdl?$" . vhdl-mode)) auto-mode-alist))
;;;(setq auto-mode-alist (cons '("\\.vhdl?\\'" . vhdl-mode) auto-mode-alist))
;;;     (setq auto-mode-alist
;;;       (append
;;;         '(("\\.vhd$" . vhdl-mode)
;;;          ) auto-mode-alist))

;;;     (setq auto-mode-alist
;;;       (append
;;;         '(("\\.vhdl$" . vhdl-mode)
;;;          ) auto-mode-alist))

(setq font-lock-support-mode 'lazy-lock-mode)
(setq font-lock-maximum-decoration t)(setq font-lock-maximal-decoration t)
(setq font-lock-use-maximal-decoration t)
      ;; Load font-lock
;;      (require 'font-lock)

      ;; Turn on font-lock for some editing modes that I use
      (add-hook 'vhdl-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'ample-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'c++-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'c-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'dired-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'emacs-lisp-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'lisp-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'makefile-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'perl-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'script-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'tcl-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'tex-mode-hook 'turn-on-font-lock 'at-end)
      (add-hook 'texinfo-mode-hook 'turn-on-font-lock 'at-end)

  (autoload 'vhdl-electric "vhdl-electric"
    "VHDL electrification for comments, dabbrev, formats" t)

;;   Now hook the modes in, as appropriate
  (add-hook 'vhdl-mode-hook 'vhdl-electric)

  (add-hook 'vhdl-electric-hook     (lambda ()
    (setq vhdl-keywords-upcase t)
    (setq vhdl-voltage 4)))

  ;; I wish I didn't need to require this...
  (require 'vhdl-highlight-setup)


;      ;; These variable settings have to come first, before the lines below.
;      (setq font-lock-use-fonts t)
;      (setq font-lock-use-colors nil)
;      (setq font-lock-use-maximal-decoration t)

;      ;; Somewhere in your .emacs, font-lock will be loaded with a
;      ;; statement like this:
;;;      (require 'font-lock)
;      (require 'vhdl-highlight-setup)
;      ;; After font-lock is loaded, you can set the colours and still use
;      ;; italic & bold fonts as chosen.
;(defvar font-lock-variable-name-face (make-face 'font-lock-variable-name-face)
;  "Face to use for variable names.")
;(defvar font-lock-signal-name-face (make-face 'font-lock-signal-name-face)
;  "Face to use for signal names.")

;(make-face 'font-lock-comment-face)
;      (make-face 'font-lock-string-face)
;      (make-face 'font-lock-function-name-face)
;      (make-face 'font-lock-variable-name-face)
;      (make-face 'font-lock-signal-name-face  )
;      (make-face 'font-lock-type-face         )

;      (set-face-foreground 'font-lock-comment-face       "blue3")
;      (set-face-foreground 'font-lock-string-face        "green4")
;      (set-face-foreground 'font-lock-function-name-face "red3")
;      (set-face-foreground 'font-lock-variable-name-face "magenta3")
;      (set-face-foreground 'font-lock-signal-name-face   "gold3")
;      (set-face-foreground 'font-lock-type-face          "purple1")


;; Added 4/28/97, RSC
;;(setq Info-directory "/home/adc/share/lib/emacs/info/")
;; Added 8/5/97, RSC
(load "desktop")
(desktop-load-default)
(desktop-read)
;; Added 10/29/97, RSC
(autoload 'resize-minibuffer-mode "rsz-mini" nil t)
(resize-minibuffer-mode 1)
(setq resize-minibuffer-window-exactly nil)
;; Added 8/11/97, RSC
(setq delete-old-versions t)
;; Shift-F4 is "pop mark off of stack"
(global-set-key [S-f4] (lambda () (interactive) (set-mark-command t)))


       ))

(cond ((< emacs-major-version 19)
       ;;
       ;; Code specific to emacs 18 goes here
       ;;
       ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;		Customization of Specific Packages		    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Load gnuserv, which will allow you to connect to XEmacs sessions
;;; using `gnuclient'.

;; If you never run more than one XEmacs at a time, you might want to
;; always start gnuserv.  Otherwise it is preferable to specify
;; `-f gnuserv-start' on the command line to one of the XEmacsen.
; (gnuserv-start)


;;; ********************
;;; Load efs, which uses the FTP protocol as a pseudo-filesystem.
;;; When this is loaded, the pathname syntax /user@host:/remote/path
;;; refers to files accessible through ftp.
;;;
(require 'dired)
;; compatible ange-ftp/efs initialization derived from code
;; from John Turner <turner@lanl.gov>
;; As of 19.15, efs is bundled instead of ange-ftp.
;; NB: doesn't handle 20.0 properly, efs didn't appear until 20.1.
;;
;; The environment variable EMAIL_ADDRESS is used as the password
;; for access to anonymous ftp sites, if it is set.  If not, one is
;; constructed using the environment variables USER and DOMAINNAME
;; (e.g. turner@lanl.gov), if set.

(if (and running-xemacs
	 (or (> emacs-major-version 20)
	     (and (= emacs-major-version 20) (>= emacs-minor-version 1))
	     (and (= emacs-major-version 19) (>= emacs-minor-version 15))))
    (progn
      (message "Loading and configuring bundled packages... efs")
      (require 'efs-auto)
      (if (getenv "USER")
	  (setq efs-default-user (getenv "USER")))
      (if (getenv "EMAIL_ADDRESS")
	  (setq efs-generate-anonymous-password (getenv "EMAIL_ADDRESS"))
	(if (and (getenv "USER")
		 (getenv "DOMAINNAME"))
	    (setq efs-generate-anonymous-password
		  (concat (getenv "USER")"@"(getenv "DOMAINNAME")))))
      (setq efs-auto-save 1))
  (progn
    (message "Loading and configuring bundled packages... ange-ftp")
    (require 'ange-ftp)
    (if (getenv "USER")
	(setq ange-ftp-default-user (getenv "USER")))
    (if (getenv "EMAIL_ADDRESS")
	(setq ange-ftp-generate-anonymous-password (getenv "EMAIL_ADDRESS"))
      (if (and (getenv "USER")
	       (getenv "DOMAINNAME"))
	  (setq ange-ftp-generate-anonymous-password
		(concat (getenv "USER")"@"(getenv "DOMAINNAME")))))
    (setq ange-ftp-auto-save 1)
    )
  )

;;; ********************
;;; Load the default-dir.el package which installs fancy handling
;;;  of the initial contents in the minibuffer when reading
;;; file names.

(if (and running-xemacs
	 (or (and (= emacs-major-version 20) (>= emacs-minor-version 1))
	     (and (= emacs-major-version 19) (>= emacs-minor-version 15))))
    (require 'default-dir))

;;; ********************
;;; Load the auto-save.el package, which lets you put all of your autosave
;;; files in one place, instead of scattering them around the file system.
;;;
(setq auto-save-directory (expand-file-name "~/autosave/")
      auto-save-directory-fallback auto-save-directory
      auto-save-hash-p nil
      efs-auto-save t
      efs-auto-save-remotely nil
      ;; now that we have auto-save-timeout, let's crank this up
      ;; for better interactive response.
      auto-save-interval 2000
      )
;; We load this afterwards because it checks to make sure the
;; auto-save-directory exists (creating it if not) when it's loaded.
(require 'auto-save)

;; This adds additional extensions which indicate files normally
;; handled by cc-mode.
(setq auto-mode-alist
      (append '(("\\.C$"  . c++-mode)
		("\\.cc$" . c++-mode)
		("\\.hh$" . c++-mode)
		("\\.c$"  . c-mode)
		("\\.h$"  . c-mode))
	      auto-mode-alist))


;;; ********************
;;; cc-mode (the mode you're in when editing C, C++, and Objective C files)

;; Tell cc-mode not to check for old-style (K&R) function declarations.
;; This speeds up indenting a lot.
(setq c-recognize-knr-p nil)

;; Change the indentation amount to 4 spaces instead of 2.
;; You have to do it in this complicated way because of the
;; strange way the cc-mode initializes the value of `c-basic-offset'.
(add-hook 'c-mode-hook (lambda () (setq c-basic-offset 4)))


;;; ********************
;;; Load a partial-completion mechanism, which makes minibuffer completion
;;; search multiple words instead of just prefixes; for example, the command
;;; `M-x byte-compile-and-load-file RET' can be abbreviated as `M-x b-c-a RET'
;;; because there are no other commands whose first three words begin with
;;; the letters `b', `c', and `a' respectively.
;;;
;; Load only if linux/unix -Windows is dumb
(if (string-equal what-env "X") 
(load-library "completer")
)

;;; ********************
;;; Load crypt, which is a package for automatically decoding and reencoding
;;; files by various methods - for example, you can visit a .Z or .gz file,
;;; edit it, and have it automatically re-compressed when you save it again.
;;; 
(setq crypt-encryption-type 'pgp   ; default encryption mechanism
      crypt-confirm-password t	   ; make sure new passwords are correct
      crypt-never-ever-decrypt t  ; if you don't encrypt anything, set this to
				   ; tell it not to assume that "binary" files
				   ; are encrypted and require a password.
      )
(require 'crypt)


;;; ********************
;;; Edebug is a source-level debugger for emacs-lisp programs.
;;;
(define-key emacs-lisp-mode-map "\C-xx" 'edebug-defun)


;;; ********************
;;; Font-Lock is a syntax-highlighting package.  When it is enabled and you
;;; are editing a program, different parts of your program will appear in
;;; different fonts or colors.  For example, with the code below, comments
;;; appear in red italics, function names in function definitions appear in
;;; blue bold, etc.  The code below will cause font-lock to automatically be
;;; enabled when you edit C, C++, Emacs-Lisp, and many other kinds of
;;; programs.
;;;
;;; The "Options" menu has some commands for controlling this as well.
;;;
(cond (running-xemacs

       ;; If you want the default colors, you could do this:
       ;; (setq font-lock-use-default-fonts nil)
       ;; (setq font-lock-use-default-colors t)
       ;; but I want to specify my own colors, so I turn off all
       ;; default values.
       (setq font-lock-use-default-fonts nil)
       (setq font-lock-use-default-colors nil)

       (require 'font-lock)

       ;; Mess around with the faces a bit.  Note that you have
       ;; to change the font-lock-use-default-* variables *before*
       ;; loading font-lock, and wait till *after* loading font-lock
       ;; to customize the faces.

       ;; string face is green
       (set-face-foreground 'font-lock-string-face "forest green")

       ;; comments are italic and red; doc strings are italic
       ;;
       ;; (I use copy-face instead of make-face-italic/make-face-bold
       ;; because the startup code does intelligent things to the
       ;; 'italic and 'bold faces to ensure that they are different
       ;; from the default face.  For example, if the default face
       ;; is bold, then the 'bold face will be unbold.)
       (copy-face 'italic 'font-lock-comment-face)
       ;; Underlining comments looks terrible on tty's
       (set-face-underline-p 'font-lock-comment-face nil 'global 'tty)
       (set-face-highlight-p 'font-lock-comment-face t 'global 'tty)
       (copy-face 'font-lock-comment-face 'font-lock-doc-string-face)
       (set-face-foreground 'font-lock-comment-face "red")

       ;; function names are bold and blue
       (copy-face 'bold 'font-lock-function-name-face)
       (set-face-foreground 'font-lock-function-name-face "blue")

       ;; misc. faces
       (and (find-face 'font-lock-preprocessor-face) ; 19.13 and above
            (copy-face 'bold 'font-lock-preprocessor-face))
       (copy-face 'italic 'font-lock-type-face)
       (copy-face 'bold 'font-lock-keyword-face)
       ))

;;--------------------------------------------------------------
;; output-listing-mode
;;--------------------------------------------------------------    

(message "Start of Nutshell Listing Mode... ")

(defconst nutshell-listing-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
 ;   '("^Executing.*\n" . font-lock-type-face)
    '("^bdz\>.*\n" . font-lock-comment-face)
    '("^einstimer\>.*\n" . font-lock-comment-face)
 ;   '("^\\>* .*\n" . font-lock-comment-face)
 ;   '("^\\[ET\\-\\[[0-9]*\\]*.*\n" . font-lock-type-face)
 ;   '("^ET\\-\\[[0-9]**.*\n" . font-lock-type-face)
    '("^.*\ ([ESA]\) .*\n" . font-lock-function-name-face)
    '("^.*\ (W\) .*\n" . font-lock-string-face)
    )))

(defun nutshell-listing-mode ()
"Major mode for editing Synthesis Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'nutshell-listing-mode
	mode-name "Nutshell-Listing"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'nutshell-listing-mode-hook)
  (setq font-lock-keywords nutshell-listing-font-lock-keywords)
)

(defun nutshell-listing-mode-hook ()
  (auto-save-mode nil)
  ;;  (local-set-key  "\^h"             'c++-electric-delete)
  (if window-system (font-lock-mode 1))
  ;; (setq font-lock-keywords 'nutshell-font-lock-keywords)
)


(add-hook 'nutshell-listing-mode-hook	'turn-on-font-lock)

(provide 'nutshell-listing-mode)
(autoload 'nutshell-listing-mode   "nutshell-listing-mode" "SYN-Listing" t)

;;--------------------------------------------------------------
;; output-listing-mode
;;--------------------------------------------------------------    

(message "Start of Output Listing Mode... ")

(defconst output-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
 ;   '("^Executing.*\n" . font-lock-type-face)
 ;   '("^[ \t]*\\>* .*\n" . font-lock-comment-face)
 ;   '("^\\>* .*\n" . font-lock-comment-face)
 ;   '("^\\[ET\\-\\[[0-9]*\\]*.*\n" . font-lock-type-face)
 ;   '("^ET\\-\\[[0-9]**.*\n" . font-lock-type-face)
    '("^.*ERROR ERRATA.*\n" . font-lock-function-name-face)
    '("^.*WARNING ERRATA.*\n" . font-lock-string-face)
    )))

(defun output-listing-mode ()
"Major mode for editing Synthesis Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'output-listing-mode
	mode-name "SYN-Listing"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'output-listing-mode-hook)
  (setq font-lock-keywords output-font-lock-keywords)
)

(defun output-listing-mode-hook ()
  (auto-save-mode nil)
  ;;  (local-set-key  "\^h"             'c++-electric-delete)
  (if window-system (font-lock-mode 1))
  ;; (setq font-lock-keywords 'output-font-lock-keywords)
)


(add-hook 'output-listing-mode-hook	'turn-on-font-lock)

(provide 'output-listing-mode)
(autoload 'output-listing-mode   "output-listing-mode" "SYN-Listing" t)

;;--------------------------------------------------------------
;; bdz-listing-mode
;;--------------------------------------------------------------    

(message "Start of BDZ Listing Mode... ")

(defconst bdz-output-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
    '("^bdz\>.*\n" . font-lock-function-name-face)
    '("^.* \([ES]\) .*\n" . font-lock-doc-string-face)
    '("^.* \(W\) .*\n" . font-lock-keyword-face)
    '("^.*ERROR ERRATA.*\n" . font-lock-doc-string-face)
    '("^.*WARNING ERRATA.*\n" . font-lock-keyword-face)
    )))

(defun bdz-listing-mode ()
"Major mode for editing Bdz (Nutshell) Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'bdz-listing-mode
	mode-name "BDZ-Listing"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'bdz-listing-mode-hook)
  (setq font-lock-keywords bdz-output-font-lock-keywords)
)

(defun bdz-listing-mode-hook ()
  (auto-save-mode nil)
  ;;  (local-set-key  "\^h"             'c++-electric-delete)
  (if window-system (font-lock-mode 1))
  ;; (setq font-lock-keywords 'output-font-lock-keywords)
)


(add-hook 'bdz-listing-mode-hook	'turn-on-font-lock)

(provide 'bdz-listing-mode)
(autoload 'bdz-listing-mode   "bdz-listing-mode" "BDZ-Listing" t)

;;========================================================================
;; tcl
;;========================================================================


(defun my-tcl-mode-hook ()
  (setq tcl-indent-level 2)
  (turn-on-font-lock)
  ;(define-key tcl-mode-map '(delete) 'delete-char)
  (setq truncate-lines t)
  (local-set-key "\C-cc" 'comment-region)
  (local-set-key  "\C-cC-c" 'uncomment-region)
;  (define-key tcl-mode-map "\C-cc" 'comment-region)
;  (define-key tcl-mode-map "\C-cC-c" 'uncomment-region)
)

(add-hook 'tcl-mode-hook 'my-tcl-mode-hook)

;;(setq tcl-application   "/.../rchland.ibm.com/fs/eng/tools/nutshell/nutshell/1.0/bin/nutsh"
;;      tcl-prompt-regexp "^[^>]> "
;;)

;;========================================================================
;; Msgcat
;;========================================================================

(setq auto-mode-alist (cons '("\\.msgcat$" . msgcat-mode) auto-mode-alist))
(autoload 'msgcat-mode "msgcat-mode" t)

;;--------------------------------------------------------------
;; xdefaults-mode
;;--------------------------------------------------------------    

(message "Start of Xdefaults Mode... ")

(defconst xdefaults-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
    '("^!.*$" . font-lock-comment-face)
    '("^#include.*$" . font-lock-keyword-face)
    '("^#.*$" . font-lock-comment-face)
    '("^?.*:" . font-lock-type-face)
    '("\:.*$" . font-lock-type-face)
    '("[\.\*][0-z,-,+,_]*:" . font-lock-string-face)
    '(".*[\.\*]" . font-lock-function-name-face)
    '("^.*[\.\*]" . font-lock-function-name-face)
    '("^\*" . font-lock-function-name-face)
;;    '("^.*:" . font-lock-function-name-face)
    )))

(defun xdefaults-mode ()
"Major mode for editing Synthesis Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'xdefaults-mode
	mode-name "X-defaults"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'xdefaults-mode-hook)
  (setq font-lock-keywords xdefaults-font-lock-keywords)
)

(defun xdefaults-mode-hook ()
  (if window-system (font-lock-mode 1))
  (font-lock-fontify-buffer)
)

(add-hook 'xdefaults-mode-hook	'turn-on-font-lock)

(provide 'xdefaults-mode)
(autoload 'xdefaults-mode   "xdefaults-mode" "Xdefaults" t)

;;--------------------------------------------------------------
;; ezwindow-mode
;;--------------------------------------------------------------    

(message "Start of Ezwindow Mode... ")

(defconst ezwindow-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
    '("^:[end]*if[ndef]*" . font-lock-doc-string-face)
    '("^:entry" . font-lock-keyword-face)
    '("^:.?ttb" . font-lock-string-face)
    '("^:.?ltr" . font-lock-function-name-face)
    '("^:\\w*" . font-lock-type-face)
    )))

(defun ezwindow-mode ()
"Major mode for editing Synthesis Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'ezwindow-mode
	mode-name "X-defaults"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'ezwindow-mode-hook)
  (setq font-lock-keywords ezwindow-font-lock-keywords)
)

(defun ezwindow-mode-hook ()
  (if window-system (font-lock-mode 1))
  (font-lock-fontify-buffer)
)

(add-hook 'ezwindow-mode-hook	'turn-on-font-lock)

(provide 'ezwindow-mode)
(autoload 'ezwindow-mode   "ezwindow-mode" "Ezwindow" t)

;;--------------------------------------------------------------
;; scenario-mode
;;--------------------------------------------------------------    

(message "Start of Scenario Mode... ")

(defconst scenario-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
    '("^#.*$" . font-lock-comment-face)
    '("^ *#.*$" . font-lock-comment-face)
    '("\\<\\(BEGIN\\|CASE\\|DO\\|E\\(LIF\\|LSE\\|ND\\|NDIF\\|CHO\\)\\|FOR\\|I[FN]\\|W\\(HILE\\|ITH\\)\\)\\>" 1 font-lock-keyword-face)
    )))

(defun scenario-mode ()
"Major mode for editing Synthesis Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'scenario-mode
	mode-name "Scenario"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'scenario-mode-hook)
  (setq font-lock-keywords scenario-font-lock-keywords)
)

(defun scenario-mode-hook ()
  (if window-system (font-lock-mode 1))
  (font-lock-fontify-buffer)
)

(add-hook 'scenario-mode-hook	'turn-on-font-lock)

(provide 'scenario-mode)
(autoload 'scenario-mode   "scenario-mode" "Scenario" t)

;;--------------------------------------------------------------
;; srule-mode
;;--------------------------------------------------------------    

(message "Start of Srule Mode... ")

(defconst srule-font-lock-keywords (purecopy
   (list
    ;; fontify preprocessor directives as comments.
;;    '("^!.*$" . font-lock-comment-face)
;;    '("^#.*$" . font-lock-comment-face)
;;    '("^\*.*$" . font-lock-comment-face)
;;    '("^POWERDEF.*" . font-lock-string-face)
    '("^RULEDEF.*" . font-lock-function-name-face)
;;    '("^RPIN.*" . font-lock-keyword-face)
;;    '("^GROUP.*" . font-lock-keyword-face)
    )))

(defun srule-mode ()
"Major mode for editing Synthesis Listings"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'srule-mode
	mode-name "S-Rule"
	local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'srule-mode-hook)
  (setq font-lock-keywords srule-font-lock-keywords)
)

(defun srule-mode-hook ()
  (local-set-key  "\177"              'delete-char)
  ;;  (local-set-key  "\^h"             'c++-electric-delete)
  ;;
  ;; Uncomment these two lines to automaticly font lock buffer
  ;;  (if window-system (font-lock-mode 1))
  ;;  (font-lock-fontify-buffer)
)

(add-hook 'srule-mode-hook	'turn-on-font-lock)

(provide 'srule-mode)
(autoload 'srule-mode   "srule-mode" "Srule" t)


;;--------------------------------------------------------------
;; clearcase version control
;;--------------------------------------------------------------
;;; custom-load.el --- automatically extracted custom dependencies

;;; Code:

;;(autoload 'custom-add-loads "cus-load")

;;(custom-add-loads 'tools '("clearcase"))
;;(custom-add-loads 'clearcase '("clearcase"))

;;; custom-load.el ends here
;; (load "clearcase")


;;--------------------------------------------------------------
;; EinsTimer assertion-file mode
;;--------------------------------------------------------------
(defconst asrt-font-lock-keywords (purecopy
   (list
    ;; fontify comments
    '("^\*.*$"           . font-lock-comment-face)
    ;; fontify pin names
    '("^[a-zA-Z][^ \t]+" . font-lock-string-face)
    ;; fontify numeric values
    '("[0-9\.]+[ \t]*"   . font-lock-type-face)
)))

(defun asrt-mode ()
"Major mode for EinsTimer assertion files"
  (interactive)
  (text-mode)
  (auto-save-mode nil)
  (setq major-mode 'asrt-mode
        mode-name "EinsTimer-Assertions"
        local-abbrev-table text-mode-abbrev-table)
  (run-hooks 'asrt-mode-hook)
  (setq font-lock-keywords asrt-font-lock-keywords)
)

(defun asrt-mode-hook ()
  (local-set-key "\177" 'delete-char)
)

(add-hook 'asrt-mode-hook 'turn-on-font-lock)

(provide 'asrt-mode)
(autoload 'asrt-mode "assertion-mode" "Assertions" t)

;;--------------------------------------------------------------
;; C++
;;--------------------------------------------------------------    
(setq c++-mode-hook 'bcw-c++-mode-hook)

(defun bcw-c++-mode-hook ()
;;; ********************
;;; cc-mode (the mode you're in when editing C, C++, and Objective C files)

;; Tell cc-mode not to check for old-style (K&R) function declarations.
;; This speeds up indenting a lot.
  (setq c-recognize-knr-p nil)
  ;; (abbrev-mode    1)
  (setq auto-fill-mode    1)

  (setq c-basic-offset 2)
  (turn-on-elec-equal)

  (setq c-offsets-alist
        '((string . -1000)
          (c . c-lineup-C-comments)
          (defun-open . 0)
          (defun-close . 0)
          (defun-block-intro . +)
          (class-open . 0)
          (class-close . 0)
          (inline-open . +)
          (inline-close . 0)
          (ansi-funcdecl-cont . -)
          (knr-argdecl-intro . 5)
          (knr-argdecl . 0)
          (topmost-intro . 0)
          (topmost-intro-cont . 0)
          (member-init-intro . +)
          (member-init-cont . 0)
          (inher-intro . +)
          (inher-cont . c-lineup-multi-inher)
          (block-open . 0)
          (block-close . 0)
          (brace-list-open . 0)
          (brace-list-close . 0)
          (brace-list-intro . +)
          (brace-list-entry . 0)
          (statement . 0)
          (statement-cont . +)
          (statement-block-intro . +)
          (statement-case-intro . +)
          (statement-case-open . +)
          (substatement . +)
          (substatement-open . +)
          (case-label . 0)
          (access-label . -)
          (label . 0)
          (do-while-closure . 0)
          (else-clause . 0)
          (comment-intro . c-lineup-comment)
          (arglist-intro . c-lineup-arglist-intro-after-paren)
          (arglist-cont . 0)
          (arglist-cont-nonempty . c-lineup-arglist)
          (arglist-close . c-lineup-arglist)
          (stream-op . c-lineup-streamop)
          (inclass . +)
          (cpp-macro . -1000)
          (friend . 0)
          (objc-method-intro . -1000)
          (objc-method-args-cont . c-lineup-ObjC-method-args)
          (objc-method-call-cont . c-lineup-ObjC-method-call)
          )
        )

  (setq auto-newline nil)
  
  (cond ((= emacs-major-version 19)
         (define-key c-mode-map "{" 'electric-c-brace)
         (define-key c-mode-map "}" 'electric-c-brace)
         (local-set-key ";" 'electric-c-semi)
         (define-key c-mode-map ";" 'electric-c-semi)
         (local-set-key "{" 'electric-c-brace)
         (local-set-key "}" 'electric-c-brace)
         (local-set-key  "\C-c\C-r"          'c-comment-edit)
         ))
  (if window-system (font-lock-mode 1))
;;;;;;  (if window-system (turn-on-font-lock 'at-end))
;  (if window-system (local-set-key  'backspace          'c-electric-delete))
;  (if window-system (local-set-key  '(meta backspace)   'backward-kill-word))
  )

;;--------------------------------------------------------------
;; Tcl
;;--------------------------------------------------------------    
(setq tcl-mode-hook 'bcw-tcl-mode-hook)

(defun bcw-tcl-mode-hook ()
  ;; (abbrev-mode    1)
  (setq tcl-indent-level  2)
  (setq auto-fill-mode    1)

  (if window-system (font-lock-mode 1))
)

;;--------------------------------------------------------------
;; C
;;--------------------------------------------------------------    
(setq c-mode-hook 'bcw-c-mode-hook)

(defun bcw-c-mode-hook ()
  ;; (abbrev-mode    1)
  (setq auto-fill-mode    1)

  ;; Old cc-mode variables 
  ;(setq c-indent-level                2)
  ;(setq c-continued-statement-offset  2)
  ;(setq c-continued-brace-offset      0)
  ;(setq c-brace-offset               -2)
  ;(setq c-brace-imaginary-offset      0)
  ;(setq c-argdecl-indent              2)
  ;(setq c-label-offset               -2)

  (setq c-basic-offset 2)
  (setq c-offsets-alist
        '((string . -1000)
          (c . c-lineup-C-comments)
          (defun-open . 0)
          (defun-close . 0)
          (defun-block-intro . +)
          (class-open . 0)
          (class-close . 0)
          (inline-open . +)
          (inline-close . 0)
          (ansi-funcdecl-cont . -)
          (knr-argdecl-intro . 5)
          (knr-argdecl . 0)
          (topmost-intro . 0)
          (topmost-intro-cont . 0)
          (member-init-intro . +)
          (member-init-cont . 0)
          (inher-intro . +)
          (inher-cont . c-lineup-multi-inher)
          (block-open . 0)
          (block-close . 0)
          (brace-list-open . 0)
          (brace-list-close . 0)
          (brace-list-intro . +)
          (brace-list-entry . 0)
          (statement . 0)
          (statement-cont . +)
          (statement-block-intro . +)
          (statement-case-intro . +)
          (statement-case-open . +)
          (substatement . +)
          (substatement-open . +)
          (case-label . 0)
          (access-label . -)
          (label . 0)
          (do-while-closure . 0)
          (else-clause . 0)
          (comment-intro . c-lineup-comment)
          (arglist-intro . c-lineup-arglist-intro-after-paren)
          (arglist-cont . 0)
          (arglist-cont-nonempty . c-lineup-arglist)
          (arglist-close . c-lineup-arglist)
          (stream-op . c-lineup-streamop)
          (inclass . +)
          (cpp-macro . -1000)
          (friend . 0)
          (objc-method-intro . -1000)
          (objc-method-args-cont . c-lineup-ObjC-method-args)
          (objc-method-call-cont . c-lineup-ObjC-method-call)
          )
        )

  (setq auto-newline nil)
        
  (cond ((= emacs-major-version 19)
         (define-key c-mode-map "{" 'electric-c-brace)
         (define-key c-mode-map "}" 'electric-c-brace)
         (local-set-key ";" 'electric-c-semi)
         (define-key c-mode-map ";" 'electric-c-semi)
         (local-set-key "{" 'electric-c-brace)
         (local-set-key "}" 'electric-c-brace)
         (local-set-key  "\C-c\C-r"          'c-comment-edit)
         (if window-system (local-set-key  'backspace          'c-electric-delete))
         ))
  (if window-system (font-lock-mode 1))
;  (if window-system (local-set-key  '(meta backspace)   'backward-kill-word))
  

  (setq compile-command (concat "gnu-make -k " buffer-file-name))
  
)

;;(add-hook 'c++-mode	'set-my-font-lock-options-hook)
;;(add-hook 'c-mode	'set-my-font-lock-options-hook)

;;--------------------------------------------------------------
;; PERL 
;;--------------------------------------------------------------    
(setq perl-mode-hook 'bcw-perl-mode-hook)

(defun bcw-perl-mode-hook ()
  (local-set-key  'backspace          'backward-delete-char-untabify)
  
  (setq auto-fill-mode    1)
  
  (setq perl-indent-level                2)
  (setq perl-continued-statement-offset  2)
  (setq perl-continued-brace-offset      0)
  (setq perl-brace-offset               -2)
  (setq perl-brace-imaginary-offset      0)
  ;;  (setq perl-argdecl-indent              2)
  (setq perl-label-offset               -2)
  
  (setq auto-newline nil)
  
  )

;;--------------------------------------------------------------
;; Set up one unique key I really like
;;--------------------------------------------------------------
(global-set-key "\C-x\C-g" 'goto-line)

;;--------------------------------------------------------------
;; Python
;;--------------------------------------------------------------
(autoload 'python-mode "python-mode" "Python editing mode." t)
(defun my-python-mode-hook ()
  (setq font-lock-keywords python-font-lock-keywords)
  (font-lock-mode 1))
(add-hook 'python-mode-hook 'my-python-mode-hook)


;;--------------------------------------------------------------
;; Load two all modes
;;--------------------------------------------------------------
;;(load "all")
(load "hall")


(setq auto-mode-alist
      (append '(("\\.C$"            . c++-mode)
                ("\\.cc$"           . c++-mode)
                ("\\.cpp$"          . c++-mode)
                ("\\.c$"            . c-mode)                  ; to edit C code
                ("\\.r$"            . c-mode)                  ; DCL Preamble files
                ("\\.h$"            . c++-mode)                ; to edit C code
                ("\\.H$"            . c++-mode)                ; to edit C code
                ("\\.b$"            . c-mode)                  ; to edit B-script code
                (".booledozer$"     . c-mode)                  ; to edit B-script code
                ("\\.output$"       . nutshell-listing-mode)   ; for nutshell consoles 
                ("\\.l$"            . nutshell-listing-mode)
                ("\\.log$"          . nutshell-listing-mode)
                ("\\.out$"          . nutshell-listing-mode)
                ("\\.stderr$"       . nutshell-listing-mode)
                ("BDCONSOLE$"       . output-listing-mode)     ; for synthesis consoles 
                ("\\.article$"      . text-mode)
                ("\\.bbl$"          . LaTeX-mode)
                ("\\.bib$"          . text-mode)
                ("\\.el$"           . emacs-lisp-mode)
                ("\\.f$"            . fortran-mode)
                ("\\.il$"           . lisp-mode)               ; for SKILL code
                ("\\.letter$"       . text-mode)
                ("\\.lisp$"         . lisp-mode)
                ("\\.lsp$"          . lisp-mode)
                ("\\.ml$"           . lisp-mode)
                ("\\.mss$"          . scribe-mode)
                ("\\.pl$"           . perl-mode)
                ("\\.pm$"           . perl-mode)
                ("\\.prolog$"       . prolog-mode)
                ("\\.py$"           . python-mode)
                ("\\.scm$"          . scheme-mode)
                ("\\.scm.[0-9]*$"   . scheme-mode)
                ("\\.scr$"          . script-mode)
                ("\\.script$"       . script-mode)
                ("\\.sty$"          . LaTeX-mode)      
                ("\\.tex$"          . TeX-mode)
                ("\\.TeX$"          . TeX-mode)
                ("\\.texinfo$"      . texinfo-mode)
                ("\\.text$"         . text-mode)
                ("\\.y$"            . c-mode)
;;                ("\\.v$"            . vhdl-mode)
;;                ("\\.vhexp$"        . vhdl-mode)
;;                ("\\.vhdl$"         . vhdl-mode)
                ("\\.pis$"          . asrt-mode)
                ("\\.pos$"          . asrt-mode)
                ("\\.eta$"          . asrt-mode)
                ("\\.etas$"         . asrt-mode)
                ("\\.dca[dj]*$"     . asrt-mode)
                ("\\.phase"         . asrt-mode)
                ("makefile$"        . makefile-mode)   ; for fun
                ("Makefile$"        . makefile-mode)   ; for fun
                ("makequick$"       . makefile-mode)   ; for fun
                ("\\.srule$"          . srule-mode)   ; for fun
                ("\\.srules$"         . srule-mode)   ; for fun
                ("\\.scn$"            . scenario-mode)   ; for fun
                ("\\.Xdefaults$"      . xdefaults-mode)   ; for fun
                ("\\.preferences$"    . xdefaults-mode)   ; for fun
                ("preferences$"     . xdefaults-mode)   ; for fun
                ("^.*parm.*$"      . xdefaults-mode)   ; for fun
                ("app-defaults.*$"      . xdefaults-mode)   ; for fun
                ) auto-mode-alist))




;;; ********************
;;; fast-lock is a package which speeds up the highlighting of files
;;; by saving information about a font-locked buffer to a file and
;;; loading that information when the file is loaded again.  This
;;; requires a little extra disk space be used.
;;;
;;; Normally fast-lock puts the cache file (the filename appended with
;;; .flc) in the same directory as the file it caches.  You can
;;; specify an alternate directory to use by setting the variable
;;; fast-lock-cache-directories.

;; Let's use lazy-lock instead.
;;(add-hook 'font-lock-mode-hook 'turn-on-fast-lock)
;;(setq fast-lock-cache-directories '("/foo/bar/baz"))


;;; ********************
;;; lazy-lock is a package which speeds up the highlighting of files
;;; by doing it "on-the-fly" -- only the visible portion of the
;;; buffer is fontified.  The results may not always be quite as
;;; accurate as using full font-lock or fast-lock, but it's *much*
;;; faster.  No more annoying pauses when you load files.

(add-hook 'font-lock-mode-hook 'turn-on-lazy-lock)
;; I personally don't like "stealth mode" (where lazy-lock starts
;; fontifying in the background if you're idle for 30 seconds)
;; because it takes too long to wake up again on my piddly Sparc 1+.
(setq lazy-lock-stealth-time nil)


;;; ********************
;;; func-menu is a package that scans your source file for function
;;; definitions and makes a menubar entry that lets you jump to any
;;; particular function definition by selecting it from the menu.  The
;;; following code turns this on for all of the recognized languages.
;;; Scanning the buffer takes some time, but not much.
;;;
;;; Send bug reports, enhancements etc to:
;;; David Hughes <ukchugd@ukpmr.cs.philips.nl>
;;;
(cond (running-xemacs
       (require 'func-menu)
;;       (define-key global-map 'f8 'function-menu)
       (add-hook 'find-file-hooks 'fume-add-menubar-entry)
       (define-key global-map "\C-cl" 'fume-list-functions)
       (define-key global-map "\C-cg" 'fume-prompt-function-goto)

       ;; The Hyperbole information manager package uses (shift button2) and
       ;; (shift button3) to provide context-sensitive mouse keys.  If you
       ;; use this next binding, it will conflict with Hyperbole's setup.
       ;; Choose another mouse key if you use Hyperbole.
       (define-key global-map '(shift button3) 'mouse-function-menu)

       ;; For descriptions of the following user-customizable variables,
       ;; type C-h v <variable>
       (setq fume-max-items 25
             fume-fn-window-position 3
             fume-auto-position-popup t
             fume-display-in-modeline-p t
             fume-menubar-menu-location "File"
             fume-buffer-name "*Function List*"
             fume-no-prompt-on-valid-default nil)
       ))


;;; ********************
;;; MH is a mail-reading system from the Rand Corporation that relies on a
;;; number of external filter programs (which do not come with emacs.)
;;; Emacs provides a nice front-end onto MH, called "mh-e".
;;;
;; Bindings that let you send or read mail using MH
;(global-set-key "\C-xm"  'mh-smail)
;(global-set-key "\C-x4m" 'mh-smail-other-window)
;(global-set-key "\C-cr"  'mh-rmail)

;; Customization of MH behavior.
(setq mh-delete-yanked-msg-window t)
(setq mh-yank-from-start-of-msg 'body)
(setq mh-summary-height 11)

;; Use lines like the following if your version of MH
;; is in a special place.
;(setq mh-progs "/usr/dist/pkgs/mh/bin.svr4/")
;(setq mh-lib "/usr/dist/pkgs/mh/lib.svr4/")


;;; ********************
;;; resize-minibuffer-mode makes the minibuffer automatically
;;; resize as necessary when it's too big to hold its contents.

(autoload 'resize-minibuffer-mode "rsz-minibuf" nil t)
(resize-minibuffer-mode)
(setq resize-minibuffer-window-exactly nil)

;;; ********************
;;; W3 is a browser for the World Wide Web, and takes advantage of the very
;;; latest redisplay features in XEmacs.  You can access it simply by typing 
;;; 'M-x w3'; however, if you're unlucky enough to be on a machine that is 
;;; behind a firewall, you will have to do something like this first:

;(setq w3-use-telnet t
;      ;;
;      ;; If the Telnet program you use to access the outside world is
;      ;; not called "telnet", specify its name like this.
;      w3-telnet-prog "itelnet"
;      ;;
;      ;; If your Telnet program adds lines of junk at the beginning
;      ;; of the session, specify the number of lines here.
;      w3-telnet-header-length 4
;      )

(require 'ffap)                      ; load the package
(ffap-bindings)                      ; do default key bindings
(cond (running-xemacs
       (add-hook 'mouse-track-click-hook 'ffap-mouse-track-click)))
(add-hook 'emacs-lisp-mode-hook 'ffap-menu-rescan 'at-end)

(autoload 'ps "view-process-mode"
  "Prints a list with processes in the buffer `View-process-buffer-name'.
     COMMAND-SWITCHES is a string with the command switches (ie: -aux).
     IF the optional argument REMOTE-HOST is given, then the command will
     be executed on the REMOTE-HOST. If an prefix arg is given, then the 
     function asks for the name of the remote host."
  t)

(cond (running-xemacs
(require 'live-icon)))

;; Options Menu Settings
;; =====================
(cond
 ((and (string-match "XEmacs" emacs-version)
       (boundp 'emacs-major-version)
       (or (and
            (= emacs-major-version 19)
            (>= emacs-minor-version 14))
           (= emacs-major-version 20))
       (fboundp 'load-options-file))
;;  (load-options-file "~dwhill//.xemacs-options")))
  (load-options-file (concat root_path ".xemacs-options"))))
;; ============================
;; End of Options Menu Settings
;;))
(put 'upcase-region 'disabled nil)

;(custom-set-faces
; '(default ((t (:foreground "black" :background "white"))) t)
; '(secondary-selection ((t nil)) t)
; '(modeline-mousable-minor-mode ((t (:foreground "green4" :background "Gray80"))) t)
; '(toolbar ((t (:background "grey80"))) t))


(setq minibuffer-max-depth nil)

;(defalias 'src
;  (read-kbd-macro "C-x d ~/mcc/equ TAB A TAB src RET"))


