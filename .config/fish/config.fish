set -gx PATH $HOME/bin $PATH
set -gx VISUAL vim
set SHELL /usr/bin/fish
#alias ls "ls -F --color --group-directories-first"
alias ls "exa --group-directories-first"
alias ll "ls -l"

switch $TERM
    case 'st-*' # suckless' simple terminal
                # Enable keypad, do it once before fish_postexec ever fires
        tput smkx
        function st_smkx --on-event fish_postexec
            tput smkx
        end
        function st_rmkx --on-event fish_preexec
            tput rmkx
        end
end
