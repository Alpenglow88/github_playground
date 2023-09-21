git branch NOTICK-Update-Required-Labels-Check
git checkout NOTICK-Update-Required-Labels-Check
cp -f ./required-labels.yaml ./tmp_dir/atlas/.github/workflows/required-labels.yaml
git add -A
git commit -m "editing required labels"
git push
