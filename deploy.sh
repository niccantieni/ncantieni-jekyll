git add .
git commit -am "automated update"
git push github master
ssh ncantieni@slab1.ethz.ch 'cd homepage; svn export https://github.com/niccantieni/ncantieni-jekyll/trunk/_site/ ./ --force; exit;'