class PostController < ApplicationController
  before_action :authenticate_user!
  def new

  end

  def warnu

  end

  def create
    @user = User.find(current_user.id)
    @post = Post.new(user_id:@user.id,title:params[:title],content:params[:content])
    @post.save
    redirect_to '/'
  end

  def read
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user==@post.user
      @post.comments.destroy_all
      @post.destroy
      redirect_to '/'
    else
      redirect_to '/post/warnd'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post= Post.find(params[:id])
    if current_user==@post.user
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save
      redirect_to '/'
    else
      redirect_to '/post/warnu'
    end
  end

  def comment_create
    @user=User.find(current_user.id)
    @comment =@user.comments.new(post_id:params[:post_id], title:params[:title], content:params[:content])
    @comment.save
    redirect_to :back
  end

  def comment_destroy
    @comment = Comment.find(params[:id])
    if current_user==@comment.user
    @comment.destroy
    redirect_to :back
    else
    redirect_to '/post/warnd'
    end

  end

  def comment_edit
    @comment = Comment.find(params[:id])
  end

  def comment_update
    @comment = Comment.find(params[:id])
    if current_user==@comment.user
    @comment.title = params[:title]
    @comment.content = params[:content]
    @comment.save
    redirect_to '/post/read/' + @comment.post.id.to_s
    else
    redirect_to '/post/warnu'
    end
  end

end
