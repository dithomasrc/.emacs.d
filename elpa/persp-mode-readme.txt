Based on perspective.el by Nathan Weizenbaum
(http://github.com/nex3/perspective-el) but perspectives shared
among frames + ability to save/restore perspectives to/from file
and it less buggy(as for me).

Home: https://github.com/Bad-ptr/persp-mode.el

Installation:

From MELPA: M-x package-install RET persp-mode RET
From file: M-x package-install-file RET 'path to this file' RET
Or put this file into your load-path.

Configuration:

When installed through package-install:
(with-eval-after-load "persp-mode-autoloads"
  (setq wg-morph-on nil) ;; switch off animation of restoring window configuration
  (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))

When installed without generating autoloads file:
(with-eval-after-load "persp-mode"
  (setq wg-morph-on nil)
  (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))
(require 'persp-mode)

Dependencies:

Ability to save/restore window configurations from/to file depends
on workgroups.el(https://github.com/tlh/workgroups.el)

Keys:

C-x x s -- create/switch to perspective.
C-x x r -- rename perspective.
C-x x c -- kill perspective
(if you kill 'nil(initial or ~main~)' persp -- it'll kill all opened buffers).
C-x x a -- add buffer to perspective.
C-x x t -- switch to buffer without adding it to current perspective.
C-x x i -- import all buffers from another perspective.
C-x x k -- remove buffer from perspective.
C-x x w -- save perspectives to file.
C-x x l -- load perspectives from file.

Customization:

M-x: customize-group RET persp-mode RET
