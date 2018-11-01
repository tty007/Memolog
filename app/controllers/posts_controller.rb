class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "ブログを投稿しました"
      redirect_to 'index'
    else
      flash[:error] = "投稿は作成されませんでした"
      render :new
    end
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    @post = attribute(post_params)
    if @post.update(post_params)
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    flash[:success] = 'ストーリーを削除しました'
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to :action => 'index'
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
