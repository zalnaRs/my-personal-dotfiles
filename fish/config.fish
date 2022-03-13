export WSL_HOST=(tail -1 /etc/resolv.conf | cut -d' ' -f2)

export ADB_SERVER_SOCKET=tcp:$WSL_HOST:5037
export PATH="$HOME/.cargo/bin:$HOME/squashfs-root/usr/bin:$HOME/platform-tools:$PATH"
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

fish_vi_key_bindings

alias del="rm -rf"
alias cls="clear"
alias vim="nvim"
alias upsql="sudo -u postgres psql"
alias psqlstart="sudo service postgresql start"
alias psqlstatus="sudo service postgresql status"
alias psqlstop="sudo service postgresql stop"
alias psqlrestart="sudo service postgresql restart"

npm -v &>/dev/null &
#neofetch --ascii_distro WSL --package_managers off  --color_blocks off                  
~/WSLHostPatcher.exe &>/dev/null &
