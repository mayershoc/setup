# My aliases
alias o='xdg-open'

alias bashrc='nano ~/.bashrc'
alias loadbash='source ~/.bashrc'

alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias -- -="cd -"       #go to previous dir
alias l='ls'            #list files
alias l.='ls -d .*'     #list hidden files
alias ll='ls -lahrt'     #extra info compared to "l"
alias lld='ls -lUd */'  #list directories
alias la='ls -a'        #list hidden files
alias sl='ls'

# canonicalize path (including resolving symlinks)
alias realpath='readlink -f'

# disk usage
alias du='du -ch --max-depth=1'

alias treeacl='tree -A -C -L 2'

# Enable tab completion
source ~/.git-completion.sh

# Change command prompt
source ~/.git-prompt.sh

# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$blue \W
$ $reset"


# ROS
function foxy () { source /opt/ros/foxy/setup.bash; source /usr/share/colcon_cd/function/colcon_cd.sh; export _colcon_cd_root=~/ros2_install; export ROS_DOMAIN_ID=0; }
alias noetic='source /opt/ros/noetic/setup.bash'


