jekyll build
git add .
git commit -am "automated update"
git push github master
ssh ncantieni@slab1.ethz.ch 'cd homepage; cd download; svn export https://github.com/niccantieni/ncantieni-jekyll/trunk/_site/download/ ./ --force; cd ../digitech; svn export https://github.com/niccantieni/ncantieni-jekyll/trunk/_site/digitech/ ./ --force; cd ..; svn export https://github.com/niccantieni/ncantieni-jekyll/trunk/_site/index.html ./ --force;exit;'