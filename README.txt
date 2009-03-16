œûLIGHTNINGœû

This gem is not intended for production use! 

This was created for a one-off project.  It has several issues.

1. It will not parse invalid xml - like a podcast with itunes:xxxx nodes
2. It will not parse atom feeds
3. It parses rss fields that only I care about.  It is in no way complete.

Use this gem to learn about the libxml library.

Use FeedZirra (http://github.com/pauldix/feedzirra/tree/master) or Hpricot(http://wiki.github.com/why/hpricot/hpricot-xml) to parse xml/rss.  They are much better than this. 

A fast rss feed parser. 

When you just want content now, boom, you got it. 

===Installation===
	You need lib-xml.  It is 300 times faster than REXML. Here's how you install:
	
	$> sudo gem install libxml-ruby

===Getting Content===
	
	Let's get an entire feed.	
	
	posts = Lightning::Parser.parse(:feed=>"http://awesomerails.wordpress.com/feed") 
	
	returns all posts in feed for awesomerails.wordpress.com
	returns an array Lighting::Post objects that have the post title, link, body, and published_on date
	
	Let's only get the last five posts.
	
	posts = Lightning::Parser.parse(:feed=>"http://awesomerails.wordpress.com/feed", :posts=>5) 
	
	returns an array of the last 5 posts as Lightning::Post objects
	
	
===Some other useful things===

	url_puller executable which will pull all the urls off a given page.
	
	$> url_puller http://awesomerails.wordpress.com/2008/08/28/google-public-transit-on-iphone/
	
	will return you a list of all uniqure urls on the page
	
	pass --base option to get only the unique base urls ( the base url for: http://awesomerails.wordpress.com/2008/08/28/google-public-transit-on-iphone/ is: awesomerails.wordpress.com)
	
