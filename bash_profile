if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# colors
PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'


# git feature
function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

# Set the prompt.
function bash_prompt(){
    PS1='${debian_chroot:+($debian_chroot)}'${blu}'$(git_branch)'${pur}' \W'${grn}' \$ '${clr}
}

bash_prompt


HISTTIMEFORMAT="%F %T "
HISTSIZE=2000
HISTFILESIZE=2000


alias ll='ls -lrt'
alias gp='git pull'
alias ga.='git add .'
alias gc='git commit'
alias gs='git status'
alias osher='ssh osher@srv'
alias scenv='. ~/.profile'
alias cat='highlight -O ansi'
alias k='kubectl'
alias kg='kubectl get'
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi



##
# Your previous /Users/osherlevi/.bash_profile file was backed up as /Users/osherlevi/.bash_profile.macports-saved_2020-12-27_at_15:52:53
##



# MacPorts Installer addition on 2020-12-27_at_15:52:53: adding an appropriate DISPLAY variable for use with MacPorts.
export DISPLAY=:0
# Finished adapting your DISPLAY environment variable for use with MacPorts.
