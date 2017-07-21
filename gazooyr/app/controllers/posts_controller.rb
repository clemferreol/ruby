class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    redirect_to root_path, flash: { notice: "créé avec succès"} if @post.save
  end

  private
    def posts_params
      params.require(:post).permit(:title, :content)
    end
end
