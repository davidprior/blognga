require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	test "should not save comment only author" do
	  comment = Comment.new(:author => "authorcomment")
	  assert_not comment.save
	end

	test "should not save comment only body" do
	  comment = Comment.new(:body => "body comment")
	  assert_not comment.save
	end

	test "should not save comment without author and body" do
	  comment = Comment.new
	  assert_not comment.save
	end

	test "should save comment with author and body" do
	  comment = Comment.new(:author => "authot comment", :body => "body comment")
	  assert comment.save
	end

end
