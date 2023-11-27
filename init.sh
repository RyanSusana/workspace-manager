#!/usr/bin/env bash
export PATH=$PATH:"$WORKSPACE_MANAGER/scripts"
export CDPATH=$CDPATH:$WORKSPACE_MANAGER:"$WORKSPACE_MANAGER/workspaces"
alias cdw="cd $WORKSPACE_MANAGER/workspaces"
alias cdp='project=$(selectp) && cd $project'
alias cdd='dir=$(selectdd) && cd $dir'
alias opendd='dir=$(selectdd) && cd $dir'
alias opend='dir=$(selectd)  && cd $dir'
alias openf='file=$(selectf) && editf $file'
alias openff='file=$(selectff) && editf $file'
alias openp='project_path=$(selectp) && sessionp $project_path'
