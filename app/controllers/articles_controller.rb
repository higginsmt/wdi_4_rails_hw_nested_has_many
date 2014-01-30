class ArticlesController < ApplicationController
	def index
    @articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render  :new
    end
  end

  def edit
    @article = Article.find([:id])
  end

  def update
   if  @bookmark.update_attributes(bookmark_params)
    redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to action: :index
  end


end
