require File.join(File.dirname(__FILE__), %w[spec_helper])

describe Lightning::Parser do
  
  it "should parse an entire feed" do
      posts = Lightning::Parser.parse(:feed=>"#{Dir.pwd}/spec/test_feed.xml")
      posts.should_not be_nil
  end
  
  it "should parse part of a feed" do
     post = Lightning::Parser.parse(:feed=>"http://awesomerails.wordpress.com/feed/", :posts=>1)
     post.should_not be_nil
  end
  
  it "should return Lightning::Post objects" do
      posts = Lightning::Parser.parse(:feed=>"http://awesomerails.wordpress.com/feed/")
      posts.first.class.should == Lightning::Post
  end
    
end