module Lightning
  class Post
    attr_accessor :feed
    attr_accessor :title
    attr_accessor :link
    attr_accessor :description
    attr_accessor :pub_date
    attr_accessor :thumbnail
    
    
    def initialize(opts={})
      self.title        = opts[:title]
      self.link         = opts[:link]
      self.description  = opts[:description]
      self.pub_date     = opts[:pub_date]
      self.feed         = opts[:feed]
      self.thumbnail    = opts[:thumbnail]
    end
    
    
  end
end