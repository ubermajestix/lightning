module Lightning
  class Parser
    class << self
      # pass :feed for the feed url or file location - required
      # pass :posts for the number of posts to return - optional
      # returns an array of Lightning::Post objects 
      def parse(opts={})
        raise "need to provide a feed url or file for this to work" unless opts[:feed]
        posts = []
        feed = opts[:feed]
        unless File.exists?(feed)
          feed = "http://" + feed unless feed.include?("http://")
        end  
        # TODO [tm] handle exceptions and errors
        # handle if file is not found - don't try to add http - remove this piece probably
        doc = XML::Parser.file(feed).parse
        items = doc.find("//*[local-name()='item']").to_a
        items = items[0, (opts[:posts] > items.length ? items.length : opts[:posts])] if opts[:posts]
        items.each do |item|
          desc = item.find('description').first.content            
          title = item.find('title').first.content
          link = item.find('link').first.content
          pub_date = Time.parse(item.find('pubDate').first.content)
          thumbnail = item.find('media:thumbnail').first.attributes[:url] if item.find('media:thumbnail').first
          posts << Lightning::Post.new(:title=>title, :pub_date=>pub_date, :link => link, :description => desc, :feed=>feed, :thumbnail=>thumbnail )
        end
        return posts
      end
    end
  end
end