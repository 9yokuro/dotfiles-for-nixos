cyan="\[$(tput setaf 6)\]"
reset="\[$(tput sgr0)\]"

PS1="[${cyan}\w${reset}]$ "

function vim_bench() {
  count=100
  if [[ -n "$1" ]]; then
    vim-startuptime -count "${count}" -vimpath "$1" | grep Total
  else
    vim-startuptime -count "${count}" | grep Total
  fi
  echo "Mesured ${count} times"
}

function upgrade_nixos() {
  if type doas > /dev/null; then
    doas nixos-rebuild --flake .#9yokuroNixOS switch --upgrade
  else
    sudo nixos-rebuild --flake .#9yokuroNixOS switch --upgrade
  fi
}

function upgrade_hm() {
  home-manager --flake .#9yokuro switch
}

function upgrade() {
  echo -e "\n### NixOS ###"
  upgrade_nixos
  echo -e "\n### home-manager ###"
  upgrade_hm
}
