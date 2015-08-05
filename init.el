(package-initialize)
 (add-to-list 'package-archives
              '("melpa" . "http://melpa.milkbox.net/packages/"))
 (add-to-list 'package-archives
              '("org" . "http://orgmode.org/elpa/"))
;;(add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))


(setq url-proxy-services '(
                           ("http" . "proxy.rockwellcollins.com:9090")
                           ("https" . "proxy.rockwellcollins.com:9090")))



;; Cant live without settings
;;________________________________________________________________________________
;;yes no to y n
(fset 'yes-or-no-p 'y-or-n-p)
;; Confirm quit
(setq confirm-kill-emacs 'yes-or-no-p)
;; Theme
(load-theme 'material t)

(require 'use-package)
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
(org-babel-load-file "~/.emacs.d/settings.org")
;;________________________________________________________________________________

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
 '(custom-safe-themes (quote ("1c57936ffb459ad3de4f2abbc39ef29bfb109eade28405fa72734df1bc252c13" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "025354235e98db5e7fd9c1a74622ff53ad31b7bde537d290ff68d85665213d85" "ed81411169b1b3e3d4cfc39b09d68ea13e0ff7708dc5b9d0bedb319e071968ad" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "968d1ad07c38d02d2e5debffc5638332696ac41af7974ade6f95841359ed73e3" "2fa2edc14dbb434fa1a08262c088a337fc4bb3efc12c89fdb9a288620b58c6f0" "6fe6ab4abe97a4f13533e47ae59fbba7f2919583f9162b440dd06707b01f7794" "42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" default)))
 '(elfeed-feeds (quote ("http://feeds.feedburner.com/emacsblog" "http://nullprogram.com/feed/" "http://www.terminally-incoherent.com/blog/feed/")))
 '(erc-modules (quote (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring smiley stamp spelling track)))
 '(fci-rule-color "#383838")
 '(font-use-system-font t)
 '(foreground-color "#657b83")
 '(jira-url "http://alm.rockwellcollins.com/issues/browse/GSADC-29")
 '(jira-username dithomas)
 '(make-pointer-invisible nil)
 '(org-agenda-files (quote ("/rfs/proj/gs_mos_mod_fpga_exrestricted/dithomas/MIDS_Terminal_Emulator/MOSMOD.org" "~/.org/red_hmi_todo.org")))
 '(org-plantuml-jar-path "/accts/dithomas/.emacs.d/elpa/contrib/scripts/plantuml.jar")
 '(send-mail-function (quote mailclient-send-it))
 '(socks-server (quote ("My socks server" "usproxy.rockwellcollins.com" 9090 4)))
 '(speedbar-fetch-etags-command "ctags")
 '(vhdl-array-index-record-field-in-sensitivity-list nil)
 '(vhdl-compile-use-local-error-regexp nil)
 '(vhdl-project-alist (quote (("MOSMOD_CONTROL_CARD" "MOSMOD Control Card" "/rfs/proj/gs_mos_mod_fpga_exrestricted/dithomas/control_fpga/" ("-r ./*") "" nil "" "" "" "" "") ("MOSMOD" "MOSMOD Test Card" "/rfs/proj/gs_mos_mod_fpga_exrestricted/dithomas/MIDS_Terminal_Emulator/" ("-r ./src/dsn/*" "../control_fpga/peripherals/src/dsn/*") "" nil "./sim/" "work" "./sim/work/" "makefile" ""))))
 '(whdl-highlight (quote (("project" (("cyan" ("q_.*" "i_.*")) ("yellow" ("n_.*" "d_.*")))) ("another project" (("cyan" ("generalram" "anotherword")) ("yellow" ("greenwitch" "yetanotherword"))))))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
