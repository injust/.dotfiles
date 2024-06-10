# Inspired by https://github.com/paulirish/dotfiles/blob/main/fish/aliases.fish
function abbr_git
    set --local short "$argv[1]"
    set --local long "$argv[2]"

    if not string match --regex --quiet '^[\w-]+$' "$short"
    or not string match --regex --quiet '^[\h\w-]+$' "$long"
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

    abbr --add "$short" --position anywhere --function "__git_$short"
end

abbr --add gad -- git add
abbr --add gbr -- git branch
abbr --add gco -- git checkout
abbr --add gcp -- git cherry-pick
abbr --add gdf -- git diff
abbr --add gdfc -- git diff --cached
abbr --add glg -- git log
abbr --add glol -- git log --decorate --oneline --graph
abbr --add glola -- git log --decorate --all --oneline --graph
abbr --add grb -- git rebase
abbr --add grba -- git rebase --abort
abbr --add grbc -- git rebase --continue
abbr --add grbi -- git rebase --interactive
abbr --add gsh -- git show
abbr --add gst -- git status
abbr --add gsw -- git switch

abbr_git co checkout
abbr_git cp cherry-pick
abbr_git df diff
abbr_git dfc 'diff --cached'
abbr_git diffc 'diff --cached'
abbr_git lol 'log --decorate --oneline --graph'
abbr_git lola 'log --decorate --all --oneline --graph'
abbr_git rb rebase
abbr_git rba 'rebase --abort'
abbr_git rbc 'rebase --continue'
abbr_git rbi 'rebase --interactive'
abbr_git st status
