thefuck --alias | source

set -xg ALL_PROXY socks5://127.0.0.1:1080
set -xg EDITOR nvim

set --universal FZF_DEFUALT_COMMAND 'fd'

source ~/.config/lf/lfcd.fish

function fish_command_not_found
  echo command $argv[1] not found
end
