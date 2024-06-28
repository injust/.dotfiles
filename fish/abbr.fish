abbr --add cat -- bat
abbr --add ll -- ls -AFhl
abbr --add wget -- wget2

# Inspired by https://fishshell.com/docs/current/interactive.html#abbreviations
abbr --add dotdot --regex '^\.{2,}$' --function __multicd
