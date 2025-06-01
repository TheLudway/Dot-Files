;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;bidi              ; (tfel ot) thgir etirw uoy gnipleh
       ;;chinese
       ;;japanese
       ;;layout            ; auie,ctsrnm is the superior home row

       :completion
       company           ; the ultimate code completion backend
       ;;(corfu +orderless)  ; complete with cap(f), cape and a flying feather!
       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       ;;ivy               ; a search engine for love and life
       vertico           ; the search engine of the future

       :ui
       ;;deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       ;;doom-quit         ; DOOM quit-message prompts when you quit Emacs
       (emoji +unicode)  ; 🙂
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       ;;indent-guides     ; highlighted indent columns
       ;;ligatures         ; ligatures and symbols to make your code pretty again
       ;;minimap           ; show a map of the code on the side
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ;;nav-flash         ; blink cursor line after big motions
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       ;;tabs              ; a tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       (vc-gutter +pretty) ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       ;;window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces
       ;;zen               ; distraction-free coding or writing

       :editor
       ;;(evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       ;;(format +onsave)  ; automated prettiness
       ;;god               ; run Emacs commands without modifier keys
       ;;lispy             ; vim for lisp, for people who don't like vim
       ;;multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       ;;rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       ;;ibuffer         ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;;eshell            ; the elisp shell that works everywhere
       ;;shell             ; simple shell REPL for Emacs
       ;;term              ; basic terminal emulator for Emacs
       vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       ;;(spell +flyspell) ; tasing you for misspelling mispelling
       ;;grammar           ; tasing grammar mistake every you make

       :tools
       (pyenv)
       ;;ansible
       biblio            ; Writes a PhD for you (citation needed)
       ;;collab            ; buffers with friends
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       lsp               ; M-x vscode
       magit             ; a git porcelain for Emacs
       ;;make              ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       ;;pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       ;;rgb               ; creating color strings
       ;;taskrunner        ; taskrunner for all your projects
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;tree-sitter       ; syntax and parsing, sitting in a tree...
       ;;upload            ; map local to remote projects via ssh/ftp

       :os
       (:if (featurep :system 'macos) macos)  ; improve compatibility with macOS
       ;;tty               ; improve the terminal Emacs experience

       :lang
       ;;agda              ; types of types of types of types...
       ;;beancount         ; mind the GAAP
       (cc +lsp)         ; C > C++ == 1
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       ;;data              ; config/data formats
       ;;(dart +flutter)   ; paint ui and not much else
       ;;dhall
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;erlang            ; an elegant language for a more civilized age
       ess               ; emacs speaks statistics
       ;;factor
       ;;faust             ; dsp, but you get to keep your soul
       ;;fortran           ; in FORTRAN, GOD is REAL (unless declared INTEGER)
       ;;fsharp            ; ML stands for Microsoft's Language
       ;;fstar             ; (dependent) types and (monadic) effects and Z3
       ;;gdscript          ; the language you waited for
       ;;(go +lsp)         ; the hipster dialect
       ;;(graphql +lsp)    ; Give queries a REST
       ;;(haskell +lsp)    ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ; a language you can depend on
       ;;json              ; At least it ain't XML
       ;;(java +lsp)       ; the poster child for carpal tunnel syndrome
       ;;javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;lean              ; for folks with too much to prove
       ;;ledger            ; be audit you can be
       ;;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       org               ; organize your plain life in plain text
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;raku              ; the artist formerly known as perl6
       ;;rest              ; Emacs as a REST client
       ;;rst               ; ReST in peace
       ;;(ruby +rails)     ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;(rust +lsp)       ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       ;;(scheme +guile)   ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;sml
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       ;;web               ; the tubes
       ;;yaml              ; JSON, but readable
       ;;zig               ; C, but simpler

       :email
       ;;(mu4e +org +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;emms
       everywhere        ; *leave* Emacs!? You must be joking
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought

       :config
       ;;literate
       (default +bindings +smartparens))


;; Definición de \textit{} al presionar C-c L i para insertar eso.
(fset 'txtit
   (kmacro-lambda-form [?\\ ?t ?e ?x ?t ?i ?t ?\{ ?\} ?\C-b] 0 "%d"))

;; Definición de \textbf{} al presionar C-c L b para insertar eso.
(fset 'txtbf
   (kmacro-lambda-form [?\\ ?t ?e ?x ?t ?b ?f ?\{ ?\} ?\C-b] 0 "%d"))

;; Definición de \texttt{} al presionar C-c L t para insertar eso.
(fset 'txttt
   (kmacro-lambda-form [?\\ ?t ?e ?x ?t ?t ?t ?\{ ?\} ?\C-b] 0 "%d"))

;; Hacer un Longtable con C-c L T
(fset 'Longtable
   (kmacro-lambda-form [?% ?  ?L ?o ?n ?g ?t ?a ?b ?l ?e ?  ?c ?o ?n ?  ?3 ?  ?o backspace ?c ?o ?l ?u ?m ?n ?a ?s ?  ?y ?  ?e ?n ?c ?a ?b ?e ?z ?a ?d ?o ?s ?  ?e ?n ?  ?  ?n ?e ?g ?r ?i ?l ?l ?a M-return M-backspace backspace ?C ?a ?d ?a ?  ?e ?n ?c ?a ?b ?e ?z ?a ?d ?o M-backspace ?c ?o ?l ?u ?m ?n ?a ?  ?t ?i ?e ?n ?e ?  ?1 ?/ ?3 ?  ?d ?e ?l ?  ?a ?n ?c ?h ?o ?  ?d ?e ?l ?  ?t ?e ?x ?t ?o M-return M-backspace backspace ?R ?e ?c ?o ?r ?d ?a ?r ?  ?t ?e ?n ?e ?r ?  ?l ?a ?s ?  ?s ?i ?g ?u ?i ?e ?n ?t ?e ?s ?  ?l ?í ?n ?e ?a ?s ?  ?e ?n ?  ?e ?l ?  ?d ?o ?c ?u ?m ?e ?n ?t ?o M-return M-backspace backspace ?\\ ?n ?e ?w ?c ?o ?l ?u ?m ?n ?t ?y ?p ?e ?\{ ?L ?\C-f ?\[ ?1 ?\] ?\{ ?> ?\{ ?\\ ?r ?a ?g ?g ?e ?d ?l ?e ?f ?t ?\\ ?l ?e ?f backspace ?t ?\\ ?n ?e ?w ?l ?i ?n ?e ?\\ ?\\ ?\\ ?a ?r ?r ?a ?y ?b ?a ?c ?k ?s ?l ?a ?s ?h ?\\ ?h ?s ?p ?a ?c ?e ?\{ ?0 ?p ?t ?\C-f ?\C-f ?m ?\{ ?# ?1 ?\C-e M-S-return M-backspace backspace ?\\ ?n ?e ?w ?c ?o ?l ?u ?m ?n ?t ?y ?p ?e ?\{ ?C ?\} ?\[ ?1 ?\] ?\{ ?> ?\{ ?\\ ?c ?e ?n ?t ?e ?r ?i ?n ?g ?\\ ?l ?e ?t ?\\ ?n ?e ?w ?l ?i ?n ?e ?\\ ?\\ ?\\ ?a ?r ?r ?r backspace ?a ?y ?b ?a ?c ?k ?s ?l ?a ?s ?h ?\\ ?h ?s ?p ?a ?c ?e ?\{ ?0 ?p ?t ?\C-f ?\C-f ?, backspace ?m ?\{ ?# ?1 ?\C-e M-S-return M-backspace backspace ?\\ ?n ?e ?w ?c ?o ?l ?u ?m ?n ?t ?y ?p ?e ?\{ ?R ?\} ?\[ ?1 ?\] ?\{ ?> ?\{ ?\\ ?r ?a ?g ?g ?e ?d ?r ?i ?g ?h ?t ?\\ ?l ?e ?t ?\\ ?e backspace ?n ?e ?w ?l ?i ?n ?e ?\\ ?\\ ?\\ ?a ?r ?r ?a ?y ?b ?a ?c ?k ?s ?l ?a ?s ?h ?\\ ?h ?s ?p ?a ?c ?e ?\{ ?0 ?p ?t ?\C-f ?\C-f ?m ?\{ ?# ?1 ?\C-e return ?\\ ?b ?e ?g ?i ?n ?\{ ?l ?o ?n ?g ?t ?a ?b ?l ?e ?\} ?\{ ?| ?C ?\[ backspace ?\{ ?0 ?. ?3 ?\\ ?t ?e ?x ?t ?w ?i ?d ?t ?h ?\C-f ?| ?C ?\{ ?0 ?. ?3 ?\\ ?t ?e ?x ?t ?w ?i ?d ?t ?h ?\C-f ?| ?C ?\{ ?0 ?. ?3 ?\\ ?t ?e ?x ?t ?w ?i ?d ?t ?h ?\} ?| ?\C-e return ?\\ ?h ?l ?i ?n ?e return ?\C-c ?L ?b ?E ?n ?c ?a ?m ?e backspace backspace ?b ?e ?z ?a ?d ?o ?  ?1 ?\C-f ?  ?& ?  ?\C-c ?L ?b ?E ?n ?c ?a ?b ?e ?z ?a ?d ?o ?  ?2 ?\C-f ?  ?& ?  ?\C-c ?L ?b ?\C-b ?\C-f ?E ?n ?c ?a ?b ?e ?z ?a ?d ?o ?  ?3 ?\C-f ?  ?\\ ?\\ ?  ?\\ ?h ?l ?i ?n ?e return ?\\ ?c backspace ?c ?a ?p ?t ?i ?o ?n ?\{ ?S ?u backspace backspace ?C ?a backspace backspace ?C ?a ?p ?t ?i ?o ?n ?  ?d ?e ?  ?l ?a ?  ?t ?a ?b ?l ?a ?\C-e return ?\\ ?l ?a ?b ?e ?l ?\{ ?t ?a ?b ?: ?e ?t ?i ?q ?u ?e ?t ?a ?\C-f return ?\\ ?e ?n ?d ?\{ ?l ?o ?n ?g ?t ?a ?b ?l ?e ?\C-f return] 0 "%d"))

;; Hacer un \section{} con C-c L S 1
(defalias 'Section
   (kmacro "\\ s e c t i o n { } C-b"))

;; Hacer un \subsection{} con C-c L S 2
(defalias 'Subsection
   (kmacro "\\ s u b s e c t i o n { } C-b"))

;; Hacer un \subsubsection{} con C-c L S 3
(defalias 'Subsubsection
   (kmacro "\\ s u b s u b s e c t i o n { } C-b"))

;; Hacer un entorno de itemize con C-c L I
(defalias 'Itemize
   (kmacro "\\ b e g i n { i t e m i z e C-e M-<return> C-n C-a \\ e n d { i t e m i z e C-e C-p"))

;; Hacer un entorno de enumerate con C-c L e
(defalias 'Enumerate
   (kmacro "\\ b e g i n { e n u m e r a t e C-e <return> <return> C-a \\ e b d <backspace> <backspace> n d { e n u m e r a t e C-p C-e M-<return>"))

;; Hacer un entorno de una figura con C-c L f
(defalias 'Figure
   (kmacro "\\ b e g i n { f i g u r e C-e <return> C-a \\ e n d { f i g u r e C-p C-e [ H C-e <return> \\ c e n t e r i n g <return> \\ i n c l u d e g r a p h i c s [ w i d t h = \\ t e x t w i d t h C-e { i m g / C-e <return> \\ c a p t i o n { F i g u t a SPC <backspace> <backspace> <backspace> r a SPC t a l C-e <return> \\ l a b e l { f i g : t a l C-p C-p C-p C-p C-n C-n M-f M-f M-f M-f C-f"))


;; Fogata en Emacs
(load "~/.config/emacs/fireplace/fireplace.el")

;; Dired cerrar varias cosas
(setq dired-kill-when-opening-new-dired-buffer t)

;; Dired mostrar todos los archivos
(setq dired-listing-switches "-lah")

;; Shell completion
(autoload 'bash-completion-dynamic-complete
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
          'bash-completion-dynamic-complete)
