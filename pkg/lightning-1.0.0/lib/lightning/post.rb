module Lightning
  class Post
    attr_accessor :feed
    attr_accessor :title
    attr_accessor :link
    attr_accessor :description
    attr_accessor :published_on
    
    def initialize(opts={})
      self.title        = opts[:title]
      self.link         = opts[:link]
      self.description  = opts[:description]
      self.published_on = opts[:published_on]
      self.feed         = opts[:feed]
    end
    
    
  end
end