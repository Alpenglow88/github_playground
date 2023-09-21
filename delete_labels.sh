declare -a Repos=$(<repos.txt)
declare -a LabelData=$(<labels.txt)
Labels=()
while IFS= read -r line; do Labels+=("$line"); done <<<"${LabelData[@]}"
declare -a Labels

mkdir -p tmp_dir
cd tmp_dir
path=$(pwd)

# DELETE LABELS
for repo in ${Repos[@]}; do
    git clone git@github.com:hudl/$repo.git
    # echo $repo
    cd $repo
    for label in "${Labels[@]}"; do
        # echo $label
        gh label delete "$label" --yes
    done
    cd ..
    rm -rf $repo
done
