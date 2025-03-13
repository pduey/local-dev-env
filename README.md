# local development environment
oh-my-zsh customizations, brew bundle, emacs config, iTerm2 config... Clone the repo and follow instructions.

# iTerm2
1. go to iTerm2 -> Settings -> General -> Settings and import iTerm2\ State.itermexport
   
   <img width="787" alt="Settings" src="https://github.com/user-attachments/assets/ddd3e45d-b359-4947-bc49-a934af22dac2" />
3. import ./teladoc-dev.py


   <img width="711" alt="image" src="https://github.com/user-attachments/assets/37c4a226-5487-4a89-b1c8-10dba4b7e151" />


# zsh
1. follow instructions at https://github.com/ohmyzsh/ohmyzsh
2. copy the custom folder from this repo into ~/.oh-my-zsh
3. large repos slow down the git_prompt_info. This fixes it.
`git config --add oh-my-zsh.hide-dirty 1`
4. get a new terminal to pick up changes

# brew bundle
1. install brew per instructions at https://brew.sh
```zsh
$ cd <dir with Brewfile>
$ brew bundle
```

# emacs
emacs is installed with `brew bundle`

In finder, go to the emacs application, right click, and choose get info. Drag the gnu-head-icon.icns file to the small icon in the top right.
It might not take effect everywhere until after a reboot (or restarting some specific service).

copy the dotemacs and dotemacs.d from this repo into ~/.emacs and ~/.emacs.d
```
# example for setting up ctags
$ ctags --recurse=yes --languages=ruby --links=no --output-format=etags flow_ui_api_core health-info telapp
```
