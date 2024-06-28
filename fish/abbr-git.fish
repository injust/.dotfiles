# Inspired by https://github.com/paulirish/dotfiles/blob/main/fish/aliases.fish
function abbr_git
    argparse -- $argv; or return

    set --local short $argv[1]
    set --local long $argv[2..-1]

    if not string match --regex --quiet '^\w[\w-]*$' -- $short
    or not string match --regex --quiet '^[\h\w-]+$' -- "$long"
        return 1
    end

    eval "function __git_$short
        set --local tokens (commandline --tokenize)
        if test \$tokens[1] = git
            echo $long
        else
            echo $short
        end
    end"

    abbr --add $short --position=anywhere --function=__git_$short
end

abbr --add gad -- git add

abbr_git br -- branch
abbr --add gbr -- git branch

abbr_git co -- checkout
abbr --add gco -- git checkout

abbr_git cp -- cherry-pick
abbr --add gcp -- git cherry-pick

abbr_git df -- diff
abbr --add gdf -- git diff

abbr_git dfc -- diff --cached
abbr_git diffc -- diff --cached
abbr --add gdfc -- git diff --cached

abbr --add glg -- git log

abbr_git lol -- log --decorate --oneline --graph
abbr --add glol -- git log --decorate --oneline --graph

abbr_git lola -- log --decorate --all --oneline --graph
abbr --add glola -- git log --decorate --all --oneline --graph

abbr_git rb -- rebase
abbr --add grb -- git rebase

abbr_git rba -- rebase --abort
abbr --add grba -- git rebase --abort

abbr_git rbc -- rebase --continue
abbr --add grbc -- git rebase --continue

abbr_git rbi -- rebase --interactive
abbr --add grbi -- git rebase --interactive

abbr_git sh -- show
abbr --add gsh -- git show

abbr_git st -- status
abbr --add gst -- git status

abbr_git sw -- switch
abbr --add gsw -- git switch
