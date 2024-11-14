require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post" do
   assert BlogPost.new(published_at: nil).draft?
  end
  test "draft? returns false for published blog post" do
    assert_not BlogPost.new(published_at: 1.year.ago).draft?
  end
  test "draft? returns false for scheduled blog post" do
    assert_not BlogPost.new(published_at: 1.year.from_now).draft?
  end

  test "published? return true for published blog post" do
   assert BlogPost.new(published_at: 1.year.ago).published? 
  end
  test "published? return false for draft blog post" do
    assert_not BlogPost.new(published_at: nil).published? 
  end
  test "published? return flase for scheduled blog post" do
    assert_not BlogPost.new(published_at: 1.year.from_now).published? 
  end
end
