# Workspace Manager
Workspace Manager is a set of command line utilities to manage projects across multiple workspaces.

Here is the structure:
- A `workspace` is a set of `project`s
- A `project` is the equivalent of a github repository
- A `directory` is just a directory (with its subdirectories) in a project
- A `file` is just file in a directory

# Utilities
## Projects
- `clonep <optional repo URI>` - clone a repository into a workspace
- `selectp` - fuzzyfinds a project in a workspace and prints it out
- `cdp` - `cd `s into a project
- `openp` - opens a project in a tmux session dedicated to the project (creates one if it doesn't exist)

## Directories
- `selectd` - selects a directory from the current folder and prints it out
- `selectdd` - selects a directory from all workspaces
- `cdd` - changes directory to a directory from all workspaces

## Files
- `selectf` - selects a file from the current directory or subdirectory and prints it out
- `selectff` - selects a file from all workspaces and prints it out
- `openf` - opens a file from current directory or subdirectories
- `openff` opens a file from all workspaces


# Pre-requisites
Workspace Manager depends on the following utilities being on your `$PATH`. This wasn't tested with anything besides `zsh`, so yeah...

- `git`
- `gum` - https://github.com/charmbracelet/gum
- `fzf` - https://github.com/junegunn/fzf
- `bat` - https://github.com/sharkdp/bat
- `glow` - https://github.com/charmbracelet/glow
- `fd` - https://github.com/sharkdp/fd
- `tmux` - https://github.com/tmux/tmux


It's a lot, but this was written with these utilities already on my system ;), and it's handy to have them there anyway. Btw, homebrew works on Linux.

```sh
brew install gum fzf bat glow fd tmux
```

# Installation
## YOLO (`zsh` only)
Run this to install Workspace Manager
```sh
git clone https://github.com/RyanSusana/workspace-manager $HOME/workspaces
echo 'export WORKSPACE_MANAGER=$HOME/workspaces' >> $HOME/.zshrc
echo 'source $WORKSPACE_MANAGER/init.sh' >> $HOME/.zshrc
source $HOME/.zshrc
```

## After cloning this repo somewhere
Put this in your `~/.zshrc` or `~/.bashrc`:

```sh
# This is important, make sure this environment variable is set.
export WORKSPACE_MANAGER=$HOME/where-you-have-cloned-the-repo
source $WORKSPACE_MANAGER/init.sh
```
