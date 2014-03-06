# -------------------------------------------------------------------
# .bashrc
#
# The individual per-interactive-shell startup file
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# Source global definitions and my aliases file
# -------------------------------------------------------------------
# source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# source my aliases file
if [ -f .bash_aliases ]; then
        . .bash_aliases
fi

# -------------------------------------------------------------------
# stuff for bash-completion and git-completion
# -------------------------------------------------------------------
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=1

# -------------------------------------------------------------------
# Prompts
# -------------------------------------------------------------------
# set prompt: user@host working directory new line $ using colors (copied from cygwin profile)
# also set title to user@host and display current directory
# added git repository information 7.15.2011

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\H \[\e[33m\]\w\[\e[0m\] $(__git_ps1 "(%s)") \n$\[\033]0;\u@\h:\w\007\] '

export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export JAVA_OPTS='-Xms512m -Xmx1024m -XX:MaxPermSize=512m'
export MAVEN_OPTS='-Xms512m -Xmx1024m -XX:MaxPermSize=200m'
export SVN_ROOT=svn+ssh://svn.ome.ksu.edu/as/data/svnroot/ome-appdev/
export MY_APPS=/Users/Tim/Applications
export PATH=$MY_APPS/bin:/usr/local/bin:$PATH
