jekyll build
git add .
git commit -am "automated update"
git push github master
ssh ncantieni@slab1.ethz.ch 'cd homepage; exit;'