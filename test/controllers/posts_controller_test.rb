require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

  test "should get new" do
    get :new
    not assert_response :success
  end

  test "should create post and comment" do
    assert_difference('Post.count') do
      post :create, post: { body: @post.body, publication_date: @post.publication_date, title: @post.title, comment: { author: @comment.author, body: @comment.body, post_id: @comment.post_id } }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { body: @post.body, publication_date: @post.publication_date, title: @post.title, comment: { author: @comment.author, body: @comment.body, post_id: @comment.post_id } }
    assert_response :success
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
