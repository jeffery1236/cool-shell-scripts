parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# credits to https://thucnc.medium.com/how-to-show-current-git-branch-with-colors-in-bash-prompt-380d05a24745

# 2 in git branch 2> represents stderr File Descripter(i.e. an open file in the OS)
# git branch 2> /dev/null redirects stderr into null (thus doesnt show on shell prompt) eg2. echo test > afile.txt
# "| sed -e '/^[^*]/d" -> sed is the stream editor command -> can replace, search, delete patterns in stream

# PS1 means prompt string -> the thing you see on the left of bash prompt
# \u -> username, \h -> host name, \w -> current working dir
