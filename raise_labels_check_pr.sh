git branch NOTICK-Update-Required-Labels-Check
git checkout NOTICK-Update-Required-Labels-Check
cp -f ./required-labels.yaml ./tmp_dir/atlas/.github/workflows/required-labels.yaml
git add -A
git commit -m "editing required labels"
git push
gh pr create --base main --title "NOTICK-Update-Required-Labels-Check" --body "Editing the required-labels.yaml workflow file to include new labels used by Elite teams"