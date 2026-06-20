if status is-interactive
    # Commands to run in interactive sessions can go here
    if type -q zoxide
        zoxide init fish | source
    end
else
    
end
