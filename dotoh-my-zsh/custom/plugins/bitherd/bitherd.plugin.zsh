export LESS='-RX -Ps%f   %B Bytes   Lines %lt to %lb of %L   Page %dt of %D$'

alias osxShowHidden='defaults write com.apple.finder AppleShowAllFiles -bool true ; killall Finder'
alias osxHideHidden='defaults write com.apple.finder AppleShowAllFiles -bool false ; killall Finder'

alias psme='ps -U $LOGNAME -o "pid ppid user ruser pmem lwp nlwp stime args"'
alias fs='find . -type f -print0 | xargs -0 fgrep '
alias efs='find . -type f -print0 | xargs -0 egrep '
alias cl='clear -x'
alias cdp='cd $PROJECT_DIR'
alias emacc='/opt/homebrew/bin/emacsclient --no-wait -s server'

export PGDATA=/opt/homebrew/var/postgresql@13

# prints current dir limited at 18 chars
function ppwd {
    # TODO: zsh does not like dirs +0
    local _w="$(dirs +0)"
    if test ${#_w} -le 18 ; then
        echo "$_w"
    else
        echo "...${_w:$((${#_w}-18))}"
    fi;
}

cpwts () {
    cp $1 $1.`date +'%Y-%m-%dT%H-%M-%S'`
}

mvwts () {
    mv $1 $1.`date +'%Y-%m-%dT%H-%M-%S'`
}

# TODO: with no args, should set project to cwd
function setproject {
    path=( ${path[@]:#*devel*} )
    export PROJECT_DIR=${HOME}/devel/${1}
    test -d ${PROJECT_DIR}/bin && path=( ${PROJECT_DIR}/bin ${path} )
    # note: because someone broke telapp/member/bin/yarn we have to make sure that asdf
    # is before the rails app bin dir in the path.
    test -d ${HOME}/.asdf/shims && path=( ${HOME}/.asdf/shims ${path} )
    cdp
    # Note: typeset -U path is the zsh command to uniq an array, and it keeps path and PATH in sync.
    # but for some reason, if typeset -U path is before cdp (cd $PROJECT_DIR), at the moment cdp is
    # run, the PATH is empty, so do it after.
    typeset -U path
}

cp_websdk_dist_to_member () {
    cp -r ~/devel/WebSDK/dist ~/devel/telapp/member/node_modules/@td/websdk && WHITELABEL="default" yarn build
}

cp_websdk_dist_to_oneapp () {
    cp -r ~/devel/WebSDK/dist ~/devel/fe-member-portal/node_modules/@td/websdk
}

gfix () {
  emacc `git status | fgrep both | awk '{print $3}'`
}

gbD-orphaned () {
  git branch -v | fgrep "[gone]" | awk '{print $1}' | xargs git branch -D
}

alias chrome-unsecure='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --user-data-dir=/tmp &'
export TDH_TEAM=fire
export TDH_SPRINT=4-8
alias team-branch="gco ${TDH_TEAM}-sprint-${TDH_SPRINT}"
