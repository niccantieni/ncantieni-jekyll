#build the jekyll project, puts a working copy under /_site/
jekyll build
#add all changed files to git
git add .
#commit
git commit -am "automated update"
#push the commits to github
git push github master
#ssh into ETHZ, change into homepage directory, update the contents (only pulls changes from /_site), and exit
#for this to work, one has to init svn from within the directory homepage on remote with the following command: 
#$ svn checkout https://github.com/niccantieni/ncantieni-jekyll/trunk/_site/ ./
#svn the remembers the "root master" to be /_site, and any further updates refer to this subdirectory
ssh ncantieni@slab1.ethz.ch 'cd ; cd homepage; svn update; exit;'