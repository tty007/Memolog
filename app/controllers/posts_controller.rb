class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    
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
    
  end

  def show
   
  end

  def update
    
  end

  def destroy
    
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
