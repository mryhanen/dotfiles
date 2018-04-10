# -*- sh -*-

# tool config

set -x GREP_OPTIONS "--exclude-dir=.svn --exclude-dir=.git --binary-files=without-match"
set -x LESS "-XMcifR"
#set -x TZ "Europe/London"

# personal config

#set -x GITROOT "git@github.com:ithinkihaveacat"

#if which atom >/dev/null
#  set -x EDITOR "atom --new-window --wait"
#  set -x VISUAL "$EDITOR"
#end

# fish config

set -g CDPATH . ~
#if test -d ~/workspace
#  set -g CDPATH $CDPATH ~/workspace
#end
#if test -d ~/citc
#  set -g CDPATH $CDPATH ~/citc
#end

# http://fishshell.com/docs/2.1/#variables-special
set fish_user_paths  /usr/local/bin

if test -d ~/bin
  set fish_user_paths ~/bin
end

if test -d /usr/local/heroku/bin
  set fish_user_paths /usr/local/heroku/bin
end

if test -d /usr/local/sbin
  set fish_user_paths /usr/local/sbin $fish_user_paths
end

if test -d ~/local/homebrew/bin
  set fish_user_paths ~/local/homebrew/bin $fish_user_paths
end

if test -d ~/local/homebrew/sbin
  set fish_user_paths ~/local/homebrew/sbin $fish_user_paths
end

# http://fishshell.com/docs/2.1/#variables-special
#set --erase fish_greeting
set fish_greeting zingg

# https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish
set -g __fish_git_prompt_showupstream "auto"
set -g __fish_git_prompt_showstashstate "1"
set -g __fish_git_prompt_showdirtystate "1"

# . $HOME/.config/fish/solarized.fish

# mkdir -p ~/.rubies
# . $HOME/.config/fish/rubies.fish

. $HOME/.config/fish/functions/ls.fish
. $HOME/.config/fish/functions/z.fish
set -x PATH $HOME/.fastlane/bin $HOME/Library/Python/2.7/bin $PATH
