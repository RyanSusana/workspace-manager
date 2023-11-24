#!/usr/bin/env bash
export PATH=$PATH:"$WORKSPACE_MANAGER/scripts"
export CDPATH=$CDPATH:$WORKSPACE_MANAGER
alias cdp='cd $(selectp)'
alias cdd='cd $(selectdd)'
alias opend='cd $(selectd)'
alias opendd='cd $(selectdd)'
