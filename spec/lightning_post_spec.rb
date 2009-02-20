require File.join(File.dirname(__FILE__), %w[spec_helper])

describe Lightning::Post do
  # TODO [tm] spec out Post object
  it "should have attributes that are accessible" do
      post = Lightning::Post.new
      post.title.should be_nil
      post.title = "blah"
      post.title.should_not be_nil      
  end
  
  it "references the feed it was parsed from" do
      post = Lightning::Parser.parse(:feed=>"#{Dir.pwd}/spec/test_feed.xml", :posts=>1).first
      post.feed.should == "#{Dir.pwd}/spec/test_feed.xml"
  end
  
  it "should return published_on as Time" do
      post = Lightning::Parser.parse(:feed=>"#{Dir.pwd}/spec/test_feed.xml", :posts=>1).first
      post.pub_date.class.should == Time
  end
  
end