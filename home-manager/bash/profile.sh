export PATH=$HOME/.cargo/bin:$HOME/go/bin:$PATH

if [[ -z "${WAYLAND_DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  exec sway
fi
