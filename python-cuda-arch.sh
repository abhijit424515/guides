sudo pacman -S cuda cudnn nvidia-utils nvidia-dkms nvtop
reboot
sudo modprobe nvidia

mkdir ~/pip-downloads
# Append these lines to your ~/.bashrc
# ---
# PIP
export PIP_DOWNLOADS="~/pip-downloads/"
alias pi="pip install --no-index --find-links=$PIP_DOWNLOADS -U"
alias pd="pip download -d $PIP_DOWNLOADS"
alias pid='function _pid() { pi "$1" || (pd "$1" && pi "$1"); }; _pid'
alias pyi='function _pyi() { mkdir -p "$1" && cd "$1" && python -m venv venv && source ./venv/bin/activate && pi pip setuptools wheel && nvim; }; _pyi'
# ---
