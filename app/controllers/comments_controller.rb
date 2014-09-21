class CommentsController < ApplicationController
  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create!(comment_params) rescue nil
      redirect_to @post
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :body, :post_id)
    end
end
