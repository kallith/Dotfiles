function fish_right_prompt

    set -l vcs (fish_vcs_prompt '%s' 2>/dev/null)

    set -l d (set_color brgrey)(date "+%R")(set_color normal)

    if test $CMD_DURATION -gt 100
        set duration (set_color brgrey)(math --scale 1 $CMD_DURATION / 1000)s(set_color normal)
    else
        set duration
    end

    set_color normal
    string join " " -- $duration $vcs $d
end
