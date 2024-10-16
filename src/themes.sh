#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @everforest-tmux_theme)"

case $SELECTED_THEME in
"hard")
  declare -A THEME=(
    ["background"]="#2E383D"
    ["foreground"]="#d8caac"
    ["black"]="#414B50"
    ["blue"]="#83b6af"
    ["cyan"]="#87c095"
    ["green"]="#a7c080"
    ["magenta"]="#d39bb6"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#2e383c"
    ["bblue"]="#384b55"
    ["bcyan"]="#543a48"
    ["bgreen"]="#3c4841"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#4c3743"
    ["bwhite"]="#787c99"
    ["byellow"]="#45443c"
  )
  ;;

"day")
  declare -A THEME=(
    ["background"]="#d5d6db"
    ["foreground"]="#343b58"
    ["black"]="#0f0f14"
    ["blue"]="#34548a"
    ["cyan"]="#0f4b6e"
    ["green"]="#33635c"
    ["magenta"]="#5a4a78"
    ["red"]="#8c4351"
    ["white"]="#343b58"
    ["yellow"]="#8f5e15"

    ["bblack"]="#9699a3"
    ["bblue"]="#34548a"
    ["bcyan"]="#0f4b6e"
    ["bgreen"]="#33635c"
    ["bmagenta"]="#5a4a78"
    ["bred"]="#8c4351"
    ["bwhite"]="#343b58"
    ["byellow"]="#8f5815"
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#323d43"
    ["foreground"]="#d8caac"
    ["black"]="#414868"
    ["blue"]="#83b6af"
    ["cyan"]="#87c095"
    ["green"]="#a7c080"
    ["magenta"]="#d39bb6"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#3a515d"
    ["bcyan"]="#543a48"
    ["bgreen"]="#425047"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#514045"
    ["bwhite"]="#787c99"
    ["byellow"]="#4d4c43"
  )
  ;;
esac

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
