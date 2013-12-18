#!/bin/bash

# NOTES:
# - Jekyll ignores _*
# - Jekyll will build the _site directory for the blog
# - This script will create _mainsite and the files in it
# 

site="./_mainsite"

echo "removing old $site.bak"
rm -rf $site.bak
echo "copying $site to $site.bak"
mv $site $site.bak

echo "making new $site"
mkdir $site
echo "copying css images js to $site"
cp -rp css images js index.html $site

for f in `ls *.tpl | grep -v "blog\.tpl\|header\|footer\|disqus\|main_navigation"`; do
        pagebase=`basename $f .tpl`
        # remove the "_" character
        pagebasename=$(echo $pagebase | sed -e 's/^.//')
        echo "pagebasename is $pagebasename"
        page="$site/$pagebasename.html"

        cat _header.tpl > $page
        cat _main_navigation.tpl >> $page
        cat $pagebase.tpl >> $page
        cat _footer.tpl >> $page
done

mv $site/blog_default.html _layouts/default.html
mv $site/post_default.html _layouts/post.html
mv _blog.tpl index.html

echo "runnign jekyll..."
jekyll

mv index.html _blog.tpl

echo "Done!"
