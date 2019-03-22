class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts @posts
  end

  def new
  end

  def show
    #show route create for us
    #this method gets triggered on 'redirect_to'

    #Find the post in the db with the id
    @post = Post.find(params[:id])
    @title = @post.title
    @body = @post.body
  end

  def create
    #render the params from the user
    #render plain: params[:post].inspect
    ##########
    #Then we have to create a MODEL
    #To actually save the posts data into
    #out db, we run the following:
    #rails g model Post title:string body:text
    ##########
    #Good practices:
    #Prual for controllers 'Posts'
    #Singular for model 'Post
    #########
    #It creates the model but you still
    #have to migrate it to the db:
    #rake db:migrate
    puts params[:post]
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end

end
