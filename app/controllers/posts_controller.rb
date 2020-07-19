class PostsController < ApplicationController
  def index
    @posts = Post.search(params[:search])
  end
  
  def new
    @post = Post.new
  end 
  
  def create
     @post = Post.new(groupname: params[:groupname], image: params[:image], content: params[:content],  numberofpeople: params[:numberofpeople])
    if @post.save
      flash[:notice] = "Circle created!"
      redirect_to("/posts/index")
    else
      flash[:notice] = "Lack of Information"
      render("posts/new")
    end
  end
  
  def about
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end 
  
  def destroy
    @post = Post.find_by(id: params[:id])
     @post.destroy
       flash[:notice] = "Circle Deleted"
       redirect_to("/posts/index")
  end 
  
  def edit
    @post = Post.find_by(id: params[:id])
  end 
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.update(groupname: params[:groupname], content: params[:content])
    
    flash[:notice] = "Information Updated"
    redirect_to("/posts/index")
  end
  
  
  
  private
  def post_params
    params.require(:post).permit(:name, :description, :image)
  end
end
