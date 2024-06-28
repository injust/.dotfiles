if not status is-interactive
    exit
end

abbr --add gad -- git add

abbr --add gbr -- git branch
__abbr_git br -- branch

abbr --add gco -- git checkout
__abbr_git co -- checkout

abbr --add gcp -- git cherry-pick
__abbr_git cp -- cherry-pick

abbr --add gdf -- git diff
__abbr_git df -- diff

abbr --add gdfc -- git diff --cached
__abbr_git dfc -- diff --cached
__abbr_git diffc -- diff --cached

abbr --add glg -- git log

abbr --add glol -- git log --decorate --oneline --graph
__abbr_git lol -- log --decorate --oneline --graph

abbr --add glola -- git log --decorate --all --oneline --graph
__abbr_git lola -- log --decorate --all --oneline --graph

abbr --add grb -- git rebase
__abbr_git rb -- rebase

abbr --add grba -- git rebase --abort
__abbr_git rba -- rebase --abort

abbr --add grbc -- git rebase --continue
__abbr_git rbc -- rebase --continue

abbr --add grbi -- git rebase --interactive
__abbr_git rbi -- rebase --interactive

abbr --add gsh -- git show
__abbr_git sh -- show

abbr --add gst -- git status
__abbr_git st -- status

abbr --add gsw -- git switch
__abbr_git sw -- switch
