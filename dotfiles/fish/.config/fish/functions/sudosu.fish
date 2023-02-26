function sudosu --wraps='sudo -E fish' --description 'alias sudosu sudo -E fish'
    sudo -E fish $argv

end
