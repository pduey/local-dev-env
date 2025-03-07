# zsh-brew-emacs
oh-my-zsh customizations, brew bundle, and emacs config. Clone repo into homedir.

# zsh
1. follow instructions at https://github.com/ohmyzsh/ohmyzsh
2. copy the custom folder from this repo into ~/.oh-my-zsh
3. large repos slow down the git_prompt_info. This fixes it.
`git config --add oh-my-zsh.hide-dirty 1`
4. get a new terminal to pick up changes

# brew bundle
1. install brew per instrunctions at https://brew.sh
```zsh
$ cd zsh-brew-emacs
$ brew bundle
```

# emacs
in finder, go to the emacs application, right click, and choose get info
drag the gnu-head-icon.icns file to the small icon in the top right.
it might not take effect everywhere until after a reboot (or restarting some specific service).

copy the dotemacs and dotemacs.d from this repo into ~/.emacs and ~/.emacs.d
```
# example for setting up ctags
$ ctags --recurse=yes --languages=ruby --links=no --output-format=etags flow_ui_api_core health-info telapp
```
