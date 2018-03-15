# This was taken and adapted from some reddit thread with a bunch of prompts.

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PS1="\n\$(s=\$(printf '%*s' \$COLUMNS); echo \${s// /―})\n\D{%Y-%m-%d} \t\n"
PS1="$PS1\w\$(__git_ps1)\n"
PS1="$PS1${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u@\h\[\033[00m\]\$ ";

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

export PATH=$PATH:~/bin
