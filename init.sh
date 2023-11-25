#!/usr/bin/env bash
export PATH=$PATH:"$WORKSPACE_MANAGER/scripts"
export CDPATH=$CDPATH:$WORKSPACE_MANAGER:"$WORKSPACE_MANAGER/workspaces"
alias cdw="cd $WORKSPACE_MANAGER/workspaces"
alias cdp='project=$(selectp) && cd $project'
alias cdd='dir=$(selectdd) && cd $dir'
alias opend='dir=$(selectd)  && cd $dir'
alias openf='file=$(selectf) && vim $file'
alias openff='file=$(selectff) && vim $file'
alias openp='project=$(selectp) && open_editor $project'
