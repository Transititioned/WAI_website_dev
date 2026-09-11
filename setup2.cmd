it checkout --theirs BACKLOG.md
git checkout --theirs CURRENT_STATE.md
git checkout --theirs DECISIONS.md
git checkout --theirs PRODUCT.md
git checkout --theirs README.md


git add .
git commit -m "Merge GitHub repo with local website backup"
git push -u origin main