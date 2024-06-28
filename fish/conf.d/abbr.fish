if not status is-interactive
    exit
end

abbr --add cat -- bat
abbr --add wget -- wget2
abbr --add where -- type --all
abbr --add which -- type

# Inspired by https://fishshell.com/docs/current/interactive.html#abbreviations
abbr --add dotdot --regex='^\.{2,}$' --function=__multicd
