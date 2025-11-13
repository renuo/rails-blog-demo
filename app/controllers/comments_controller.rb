class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create!(params.expect(comment: [:content]))
    # head :created
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
