`helm-ls-svn.el' is a helm extension for listing files in svn project.

This package is on MELPA (http://melpa.org/#/helm-ls-svn), you can always get
the latest version from MELPA.


Installation
============

To install, make sure this file is saved in a directory in your `load-path',
and add the line:

  (require 'helm-ls-svn)

to your Emacs initialization file.


Usage
=====

By calling helm-ls-svn-ls in any buffer that is a part of a svn repo, you
will be presented with a corresponding helm buffer containing a list of all
the buffers/files currently in that same repository,


Reporting Bugs
==============

Bug report, suggestion and patch are welcome. Please email me (see above to
get my email address).


TODO
====

- `helm-browse-project' integration.
