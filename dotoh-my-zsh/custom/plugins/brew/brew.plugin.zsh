alias brewp='brew pin'
alias brewsp='brew list --pinned'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'
alias buf='brew upgrade --formula'
alias bcubo='brew update && brew outdated --cask'
alias bcubc='brew upgrade --cask && brew cleanup'

function brews() {
  local formulae="$(brew leaves | xargs brew deps --installed --for-each)"
  local casks="$(brew list --cask)"

  local cyan="$(tput setaf 6)"
  local bold="$(tput bold)"
  local off="$(tput sgr0)"

  echo "${bold}Formulae:${off}"
  echo "${formulae}" | sed "s/^\(.*\):\(.*\)$/\1${cyan}\2${off}/"
  echo "\n${bold}Casks:${off}\n${casks}"
}
