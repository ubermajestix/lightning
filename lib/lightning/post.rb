module Lightning
  class Post
    attr_accessor :feed, :title, :link, :description, :pub_date, :thumbnail, :player         
    
    def initialize(opts={})
      self.title        = opts[:title]
      self.link         = opts[:link]
      self.description  = opts[:description]
      self.pub_date     = opts[:pub_date]
      self.feed         = opts[:feed]
      self.thumbnail    = opts[:thumbnail]
      self.player       = opts[:player]
    end           
    
  end
end