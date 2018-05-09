class ArticlesController < ApplicationController
  
  def create
    params.permit!
    @article=Article.new(params[:article])
    @article.save()

    redirect_to @article
  end

  def new

  end

  def index
    @articles=Article.all
  end

  def show
    @article=Article.find(params[:id])

  end
  
  def destroy
    article = Article.find(params[:id])
    article.destroy
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(params.require(:article).permit(:title, :content))
    
    redirect_to @article
  end
end
