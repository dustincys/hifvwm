#!/usr/bin/bash

/usr/bin/emacs --batch -l /home/dustin/.spacemacs -eval '(org-batch-agenda "a" org-agenda-span (quote day) org-agenda-remove-tags t)' > /home/dustin/.fvwm/tmp/agenda.txt
