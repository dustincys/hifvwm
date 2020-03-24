##!/usr/bin/env bash
FvwmCommand "Pointerwindow (CurrentPage, "'okular'", "'!'"Iconic, Iconifiable, "'!'"shaded, "'!'"overlapped) Silent MaxInEBSS" && xdotool windowactivate --sync $(xdotool getmouselocation | awk 'match($4, /([0-9]+)/, id)  {print id[1]}') key --clearmodifiers F11
FvwmCommand "Pointerwindow (CurrentPage, "'okular'", "'!'"Iconic, Iconifiable, "'!'"shaded, "'!'"overlapped) Silent delete"
