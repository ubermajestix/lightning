require File.join(File.dirname(__FILE__), %w[spec_helper])

describe Lightning::Parser do
  
  before(:each) do
    @posts = Lightning::Parser.parse(:feed=>"#{Dir.pwd}/spec/test_feed.xml")
  end
  
  it "should parse an entire feed into Lighting::Post objects" do
      @posts.should_not be_nil
       @posts.first.class.should == Lightning::Post
  end
  
  it "should parse part of a feed" do
     post = Lightning::Parser.parse(:feed=>"#{Dir.pwd}/spec/test_feed.xml", :posts=>1)
     post.should_not be_nil
  end
  
  it "should return published_on as Time" do
      post = Lightning::Parser.parse(:feed=>"#{Dir.pwd}/spec/test_feed.xml", :posts=>1)
      post.published_on.class.should == Time
  end

  

    
end