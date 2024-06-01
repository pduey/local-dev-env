# zsh-emacs
personal zsh and emacs config

# zsh
1. follow instructions at https://github.com/ohmyzsh/ohmyzsh
2. copy the custom folder from this repo into ~/.oh-my-zsh
3. large repos slow down the git_prompt_info. This fixes it.
`git config --add oh-my-zsh.hide-dirty 1`
4. get a new terminal

# emacs
```sh
$ brew tap railwaycat/emacsmacport
copy the dotemacs and dotemacs.d from this repo into ~/.emacs and ~/.emacs.d
$ brew services start emacs
$ brew install universal-ctags
$ brew link universal-ctags
# example for setting up ctags
$ ctags --recurse=yes --languages=ruby --links=no --output-format=etags flow_ui_api_core health-info telapp
