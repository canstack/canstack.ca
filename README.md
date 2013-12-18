#Canstack Website

This is the repository for the Canstack website.

Please note that the HTML and CSS files came from a commercial template that was purchased, so those files are not open source and could only be used if you also purchased a license.

Otherwise all the content of the site is open source.

## To build the site and the blog

The website has a main site that would go on http://canstack.ca and a blog that is at http://blog.canstack.ca. The blog is generated with Jekyll and the main site is created from some basic templates and a small bash script.

Once you have made changes, you can generate a new site and blog with the <code>_build.sh</code> script:

```bash
$ ./_build.sh 
removing old ./_mainsite.bak
copying ./_mainsite to ./_mainsite.bak
making new ./_mainsite
copying css images js to ./_mainsite
cp: index.html: No such file or directory
pagebasename is blog_default
pagebasename is index
pagebasename is post_default
runnign jekyll...
Configuration from /Users/curtis/working/canstack_website/_config.yml
Building site: /Users/curtis/working/canstack_website -> /Users/curtis/working/canstack_website/_site
Successfully generated site: /Users/curtis/working/canstack_website -> /Users/curtis/working/canstack_website/_site
Done!
```

## Changes to the site

We would be happy to change the site in any way that our members would like. We're not partial to this website design at all, so feel free to contribute changes to help to make the look and feel of the site, as well as the content, better.

Thanks!