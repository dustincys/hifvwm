;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-dis(with-eval-after-load 'helm
    (setq helm-display-function 'helm-default-display-buffer))tribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     typescript
     javascript
     html
     csv
     yaml
     finance
     python
     java
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (colors :variables
             colors-enable-nyan-cat-progress-bar t)
     helm
     auto-completion
     better-defaults
     emacs-lisp
     git
     markdown
     org
     latex
     ranger
     gtags
     c-c++
     imenu-list
     notmuch
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(excorporate
                                      calfw
                                      calfw-ical
                                      org-caldav
                                      org-toodledo
                                      w3m
                                      http-post-simple
                                      ledger-mode
                                      notmuch
                                      helm-notmuch
                                      yasnippet-snippets
                                      goldendict
                                      fcitx
                                      cal-china-x
                                      doom-themes
                                      solarized-theme
                                      fvwm-mode
                                      org-super-agenda
                                      helm-org-rifle
                                      org-web-tools
                                      magit-todos
                                      py-autopep8
                                      ess
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    org-projectile
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         solarized-dark
                         doom-one
                         solarized-light
                         ;; spacemacs-light
                         ;; tsdh-dark
                         ;; light-blue
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Monaco"
                               :size 16.0
                               :weight normal
                               :width normal
                               :antialias none)
   ;; ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 70
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (setq org-todo-keywords
        '((sequence "TODO(t)" "PRGS(p@/!)" "|" "DONE(d!)" "CANCELED(c@)")))

  (setq org-todo-keyword-faces
        '(
          ("TODO" . (:background "blue" :foreground "white" :weight bold))
          ("PRGS" . (:background "green4" :foreground "white" :weight bold))
          ;; ("DONE" . (foreground "gray" :weight bold))
          ;; ("CANCLE" . (:foreground "gray" :weight bold))
          ))

  (setq org-highest-priority ?A)
  (setq org-lowest-priority  ?E)
  (setq org-default-priority ?E)
  ;; 优先级醒目外观
  (setq org-priority-faces
        '((?A . (:background "Red" :foreground "white" :weight bold))
          (?B . (:background "#ff6000" :foreground "white" :weight bold))
          (?C . (:background "#ff8000" :foreground "#222222" :weight bold))
          (?D . (:background "#ffa000" :foreground "black" :weight bold))
          (?E . (:background "gold" :foreground "black" :weight bold))
          ))

  ;; (setq org-columns-default-format
  ;;       "%25ITEM %3PRIORITY %8TODO %TIMESTAMP")

  ;; (add-to-list 'org-agenda-custom-commands
  ;;              '("t" "List of all TODO entries"
  ;;                alltodo ""
  ;;                ((org-agenda-view-columns-initially t))
  ;;                ))

  (setq-default evil-search-module 'evil-search)
  (global-set-key (kbd "C-c gd") 'goldendict-dwim)
  (add-to-list 'auto-mode-alist '("\\.fvwm2rc$" . fvwm-mode))
  (setq org-startup-indented t)
  (setq evil-auto-indent t)

  ;; (add-to-list 'auto-mode-alist '("\\.org$" . org-super-agenda-mode))
  ;; (require 'org-protocol)
  ;; (setq-default electric-indent-inhibit t)
  ;; (setq-default org-startup-indented t)

  ;; (with-eval-after-load "org-mode"
  ;;   ;; This changes the evil "O" and "o" keys for haskell-mode to make sure that
  ;;   ;; indentation is done correctly. See
  ;;   ;; https://github.com/haskell/haskell-mode/issues/1265#issuecomment-252492026.
  ;;   (defun haskell-evil-open-above ()
  ;;     (interactive)
  ;;     (evil-digit-argument-or-evil-beginning-of-line)
  ;;     (haskell-indentation-newline-and-indent)
  ;;     (evil-previous-line)
  ;;     (haskell-indentation-indent-line)
  ;;     (evil-append-line nil))

  ;;   (defun haskell-evil-open-below ()
  ;;     (interactive)
  ;;     (evil-append-line nil)
  ;;     (haskell-indentation-newline-and-indent))

  ;;   (evil-define-key 'normal haskell-mode-map
  ;;     "o" 'haskell-evil-open-below
  ;;     "O" 'haskell-evil-open-above)
  ;;   )
)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (require 'ess-r-mode)

  ;; Python autopep
  (require 'py-autopep8)
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

  ;; set theme
  (setq spacemacs-theme-org-agenda-height nil)
  (setq spacemacs-theme-keyword-italic t)

  ;; hl-todo
  (spacemacs/set-leader-keys "ict" 'hl-todo-insert)
  (spacemacs/set-leader-keys "jctn" 'hl-todo-next)
  (spacemacs/set-leader-keys "jctp" 'hl-todo-previous)
  (spacemacs/set-leader-keys "oct" 'hl-todo-occur)
 ; TODO set new key binding 
  ;; magit todos, depends on hl-tod
  (require 'magit-todos)

  ;; org agenda view
  (require 'org-super-agenda)
  (add-hook 'org-mode-hook 'org-super-agenda-mode)
  (setq org-super-agenda-header-map (make-sparse-keymap))
  (setq org-agenda-block-separator nil)
  (setq org-super-agenda-groups
        '(;;
          ;; (:name #("Due this week:" 0 13 (face (:background nil :foreground "PaleGreen1")))
          ;;        ;; :sort '(deadline)
          ;;        :order 0)
          (:name #("Diary/Holiday/Birthday" 0 22 (face (:underline t :background nil :foreground "sky blue")))
                 :tag "Birthday"
                 :category "Diary"
                 :order 1)
          (:name #("Timeline" 0 8 (face (:underline t :background nil :foreground "SeaGreen1")))
                 :time-grid t :order 2)
          (:name #("Important"0 9 (face (:underline t :background nil :foreground "magenta1")))
                 :and (:priority "A" :todo ("TODO" "PRGS") :not (:habit t))
                 ;; :and (:tag ("FINANCE" "CLASS" "LECTURE")  :not (:habit t))
                 :and (:deadline t :todo ("TODO" "PRGS" "") :not (:habit t))
                 :order 5)
          (:name #("Less Important" 0 14 (face (:underline t :background nil :foreground "magenta3")))
                 :and (:not (:habit t) :priority "B" :todo ("TODO" "PRGS" ""))
                 :order 6)
          (:name #("Take time" 0 9 (face (:underline t :background nil :foreground "magenta4")))
                 :and (:not (:habit t) :priority<= "C" :todo ("TODO" "PRGS" ""))
                 :order 7)
          (:name #("Else" 0 4 (face (:underline t)))
                 :and (:not (:todo "DONE") :not(:tag ("PHONE" "Mail")) :not(:habit t) :not (:habit t))
                 :order 8)
          (:name #("Phone" 0 5 (face (:underline t)))
                 :and (:tag "PHONE" :todo ("TODO" "PRGS" "") :not (:habit t))
                 :order 1001)
          (:name #("Mail" 0 4 (face (:underline t)))
                 :and (:tag "MAIL" :todo ("TODO" "PRGS" "") :not (:habit t))
                 :order 1002)
          (:name #("Habit" 0 5 (face (:underline t)))
                 :habit t :order 998)
          (:name #("Finished" 0 8 (face (:underline t :background nil :foreground "green"))) :todo "DONE" :order 999)
          (:name #("Canceled" 0 8 (face (:underline t :background nil :foreground "green"))) :todo "CANCELED" :order 1000)
          ))
  ;; (setq org-agenda-sorting-strategy '(priority-down time-down todo-state-down effort-up category-keep))

  (require 'helm-org-rifle)
  (spacemacs/set-leader-keys "of" 'helm-org-rifle)

  (require 'org-web-tools)
  (spacemacs/set-leader-keys "oil" 'org-web-tools-insert-link-for-url)

  (require 'org-habit)
  (setq org-modules (quote (org-habit)))

  (define-key evil-normal-state-map (kbd "C-c na") 'evil-numbers/inc-at-pt)
  (define-key evil-visual-state-map (kbd "C-c na") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c nx") 'evil-numbers/dec-at-pt)
  (define-key evil-visual-state-map (kbd "C-c nx") 'evil-numbers/dec-at-pt)

  (define-key evil-normal-state-map (kbd "C-i") 'evil-jump-forward)

  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset (font-spec :family "WenQuanYi Zen Hei Mono" :size 20)))

  (setq imenu-list-size 20)

  ;; Fcitx
  (setq fcitx-active-evil-states '(insert emacs hybrid)) ; if you use hybrid mode
  (fcitx-aggressive-setup)
  (fcitx-prefix-keys-add "M-m") ; M-m is common in Spacemacs
  (setq fcitx-use-dbus t) ; uncomment if you're using Linux

  ;; For git-gutter theme
  (set-face-background 'git-gutter-fr+-modified "#454500")
  (set-face-background 'git-gutter-fr+-added    "#055555")
  (set-face-background 'git-gutter-fr+-deleted  "#801010")
  (set-face-foreground 'git-gutter-fr+-modified "yellow")
  (set-face-foreground 'git-gutter-fr+-added    "#00ffff")
  (set-face-foreground 'git-gutter-fr+-deleted  "lightred")
  '(version-control :variables
                    version-control-diff-tool 'git-gutter)
  '(version-control :variables
                    version-control-global-margin t)

  ;; For LaTeX
  (eval-after-load "tex" 
    '(setcdr (assoc "LaTeX" TeX-command-list)
             '("%`%l%(mode) -shell-escape%' %t"
               TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")
             ))
  (setq TeX-source-correlate-mode t)
  (setq TeX-source-correlate-method-active 'synctex)
  (setq TeX-source-correlate-start-server t)
  (setq TeX-view-program-selection '((output-pdf "Okular")))
  (server-start)

  ;; Org-mode
  ;; Make sure the following comes before `(fcitx-aggressive-setup)'

  (setq org-agenda-window-setup 'current-window)
  (setq org-deadline-warning-days 7)
  (setq org-capture-templates
        '(("w" "work" entry (file+headline "/home/dustin/github/agenda/emacs/work.org" "Temporary task")
           "* TODO %?\n  %i\n %a")
          ("l" "life" entry (file+headline "/home/dustin/github/agenda/emacs/life.org" "Temporary task")
           "* TODO %?\n  %i\n")
          ("t" "task" entry (file+headline "/home/dustin/github/agenda/emacs/task.org" "Temporary task")
           "* TODO %?\n  %i\n %a")))

  (defadvice org-capture-destroy
      (after delete-capture-frame activate)
    "Advise capture-destroy to close the frame"
    (if (equal "capture" (frame-parameter nil 'name))
        (delete-frame)))
  (defadvice org-capture-finalize
      (after delete-capture-frame activate)
    "Advise capture-finalize to close the frame"
    (when (and (equal "capture" (frame-parameter nil 'name))
               (not (eq this-command 'org-capture-refile)))
      (delete-frame)))
  (defadvice org-capture-refile
      (after delete-capture-frame activate)
    "Advise org-refile to close the frame"
    (delete-frame))
  ;; make the frame contain a single window. by default org-capture
  ;; splits the window.
  (defadvice org-switch-to-buffer-other-window
      (after supress-window-splitting activate)
    "Delete the extra window if we're in a capture frame"
    (if (equal "capture" (frame-parameter nil 'name))
        (delete-other-windows)))
  (defun make-capture-frame (&optional capture-template)
    "Create a new frame and run org-capture."
    (interactive)
    (make-frame '((name . "capture")
                  (width . 80)
                  (height . 15)))
    (select-frame-by-name "capture")
    (setq word-wrap 1)
    (setq truncate-lines nil)
    (if capture-template (org-capture nil capture-template) (org-capture)))

  (defvar my-org-capture-before-config nil
    "Window configuration before `org-capture'.")
  (defadvice org-capture (before save-config activate)
    "Save the window configuration before `org-capture'."
    (setq my-org-capture-before-config (current-window-configuration)))
  (add-hook 'org-capture-mode-hook 'delete-other-windows)
  (defun my-org-capture-cleanup ()
    "Clean up the frame created while capturing via org-protocol."
    ;; In case we run capture from emacs itself and not an external app,
    ;; we want to restore the old window config
    (when my-org-capture-before-config
      (set-window-configuration my-org-capture-before-config))
    (-when-let ((&alist 'name name) (frame-parameters))
      (when (equal name "org-protocol-capture")
        (delete-frame))))
  (add-hook 'org-capture-after-finalize-hook 'my-org-capture-cleanup)

  ;; calendar
  (require 'cal-china-x)
  (setq mark-holidays-in-calendar t)
  (setq org-agenda-include-diary t)
  (setq my-holidays
        '(;;公历节日
          (holiday-fixed 2 14 "情人节")
          (holiday-fixed 9 10 "教师节")
          (holiday-fixed 5 1 "劳动节")
          (holiday-float 6 0 3 "父亲节")
          (holiday-float 5 0 2 "母亲节")
          (holiday-fixed 1 1 "New Year's Day")
          (holiday-float 1 1 3 "Martin Luther King Day")
          (holiday-float 2 1 3 "President's Day")
          (holiday-float 5 1 -1 "Memorial Day")
          (holiday-fixed 7 4 "Independence Day")
          (holiday-float 9 1 1 "Labor Day")
          (holiday-float 10 1 2 "Columbus Day")
          (holiday-fixed 11 11 "Veteran's Day")
          (holiday-float 11 4 4 "Thanksgiving")
          (holiday-fixed 12 25 "Christmas")
          (holiday-sexp '(if (zerop (% year 4))
                             (calendar-gregorian-from-absolute
                              (1+ (calendar-dayname-on-or-before
                                   1 (+ 6 (calendar-absolute-from-gregorian
                                           (list 11 1 year)))))))
                        "US Presidential Election")
          (holiday-lunar 1 1 "春节" 0)
          (holiday-lunar 1 15 "元宵节" 0)
          (holiday-solar-term "清明" "清明节")
          (holiday-lunar 5 5 "端午节" 0)
          (holiday-lunar 7 7 "七夕情人节" 0)
          (holiday-lunar 8 15 "中秋节" 0)))
  (setq calendar-holidays my-holidays)

  (setq org-agenda-span 3
        org-agenda-start-on-weekday nil
        org-agenda-start-day "-1d")
  ;; (setq org-agenda-custom-commands
  ;;       '(("W" agenda "" ((org-agenda-ndays 28)))))

  ;; ledger
  (add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))

  ;; Theme
  (spacemacs/toggle-transparency)

  ;; set transparency
  ;; (set-frame-parameter (selected-frame) 'alpha '(85 85))
  ;; (add-to-list 'default-frame-alist '(alpha 85 85))

  (desktop-save-mode 1)

  ;; notmuch
  (setq notmuch/notmuch-tag-face-color "#3f7f5f")
  (setq notmuch/notmuch-search-unread-face-color "#4f97d7")
  (setq message-send-mail-function 'message-send-mail-with-sendmail)
  (setq sendmail-program "/usr/bin/msmtp")

  (with-eval-after-load 'helm
    (setq helm-display-function 'helm-default-display-buffer))
  (require 'helm-bookmark)
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#073642" t)
 '(fringe-mode 4 nil (fringe))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(imenu-list-minor-mode nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#2b2a27" "#ff5d38"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#2b2a27" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#2b2a27" "#3f444a"))
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(notmuch-saved-searches
   (quote
    ((:name "inbox" :query "tag:inbox" :key "i" :sort-order newest-first)
     (:name "unread" :query "tag:unread" :key "u" :sort-order newest-first)
     (:name "flagged" :query "tag:flagged" :key "f" :sort-order newest-first)
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d" :sort-order newest-first)
     (:name "all mail" :query "*" :key "a" :sort-order newest-first)
     (:name "edu" :query "from:*@*.edu.cn" :sort-order newest-first)
     (:name "工商银行" :query "icbc" :sort-order newest-first)
     (:name "MD Anderson HR" :query "nkhalfe"))))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(objed-cursor-color "#aa4450")
 '(org-agenda-custom-commands
   (quote
    (("n" "Agenda and all TODOs"
      ((alltodo "" nil))
      nil)
     ("p" "Phone call / email / other communication"
      ((tags-todo "PHONE" nil)
       (tags-todo "MAIL" nil)
       (tags-todo "TALK" nil))
      nil nil)
     ("r" "Trip:"
      ((tags-todo "TRIP" nil))
      nil nil)
     ("h" "Shopping plan:"
      ((tags-todo "SHOPPING" nil))
      nil nil)
     ("c" "Meetings, classes or lectures to do:"
      ((tags-todo "CLASS" nil)
       (tags-todo "LECTURE" nil)
       (tags-todo "MEETING" nil))
      nil nil)
     ("f" "Financial issue:"
      ((tags-todo "FINANCE"
                  ((org-agenda-overriding-header "Financial to do:"))))
      nil nil))))
 '(org-agenda-files
   (quote
    ("~/data/github/agenda/org/learn.org" "~/github/agenda/emacs/life.org" "~/github/agenda/emacs/work.org" "~/github/agenda/emacs/task.org")))
 '(org-log-into-drawer t)
 '(package-selected-packages
   (quote
    (ess julia-mode py-autopep8 suscolors-theme soothe-theme magit-todos org-web-tools esxml helm-org-rifle org-super-agenda highlight request tide typescript-mode gnome-calendar livid-mode skewer-mode js2-refactor multiple-cursors goose-theme tramp-theme faff-theme color-theme cloud-theme eclipse-theme github-theme firecode-theme eink-theme web-beautify simple-httpd json-mode json-snatcher json-reformat js2-mode js-doc company-tern tern coffee-mode web-mode tagedit slim-mode scss-mode sass-mode pug-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data evil company-emacs-eclim eclim rainbow-mode rainbow-identifiers color-identifiers-mode org-capture-pop-frame color-theme-sanityinc-solarized color-theme-solarized csv-mode evil-mc-extras fvwm-mode gl-conf-mode iedit smartparens async solarized-theme doom-themes all-the-icons memoize helm-notmuch request-deferred deferred org-category-capture alert log4e gntp gitignore-mode fringe-helper git-gutter+ git-gutter flyspell-correct pos-tip nadvice url-http-ntlm soap-client fsm yasnippet auctex anaconda-mode pythonic auto-complete yaml-mode yasnippet-snippets xterm-color which-key w3m paradox orgit org-mime notmuch live-py-mode link-hint ledger-mode hydra hy-mode helm-make git-timemachine git-link ggtags eyebrowse expand-region evil-nerd-commenter evil-mc evil-matchit dumb-jump auto-yasnippet ace-window ace-link avy flycheck company helm helm-core magit-popup magit transient git-commit markdown-mode projectile org-plus-contrib powerline dash yapfify ws-butler with-editor winum volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org spinner spaceline smeargle shell-pop seq restart-emacs ranger rainbow-delimiters pyvenv pytest pyenv-mode py-isort popwin pkg-info pip-requirements persp-mode pcre2el org-toodledo org-projectile org-present org-pomodoro org-download org-caldav org-bullets open-junk-file neotree mwim multi-term move-text mmm-mode markdown-toc magit-gitflow macrostep lv lorem-ipsum linum-relative let-alist indent-guide imenu-list hungry-delete http-post-simple htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-gtags helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate goldendict golden-ratio gnus-alias gnuplot gitconfig-mode gitattributes-mode git-messenger git-gutter-fringe git-gutter-fringe+ gh-md fuzzy flyspell-correct-helm flycheck-pos-tip flycheck-ledger flx-ido fill-column-indicator fcitx fancy-battery exec-path-from-shell excorporate evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help elisp-slime-nav disaster diminish diff-hl define-word dash-functional cython-mode company-statistics company-c-headers company-auctex company-anaconda column-enforce-mode cmake-mode clean-aindent-mode clang-format calfw-ical calfw cal-china-x auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk aggressive-indent adaptive-wrap ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#969896" . "#f8eec7")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(send-mail-function (quote sendmail-send-it))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c8805d801780")
     (60 . "#bec073400bc0")
     (80 . "#b58900")
     (100 . "#a5008e550000")
     (120 . "#9d0091000000")
     (140 . "#950093aa0000")
     (160 . "#8d0096550000")
     (180 . "#859900")
     (200 . "#66aa9baa32aa")
     (220 . "#57809d004c00")
     (240 . "#48559e556555")
     (260 . "#392a9faa7eaa")
     (280 . "#2aa198")
     (300 . "#28669833af33")
     (320 . "#279993ccbacc")
     (340 . "#26cc8f66c666")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-date ((t (:background nil :foreground "deep sky blue" :inverse-video nil :box nil :overline t :underline t :slant italic :weight bold :height 1.0))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :inverse-video nil :overline t :underline t :weight bold :background nil :foreground "red"))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "dark violet" :inverse-video nil :box nil :overline t :underline t))))
 '(org-agenda-done ((t (:height 1.0))))
 '(org-agenda-structure ((t (:height 1.0 :background nil))))
 '(org-scheduled-today ((t (:height 1.0)))))
