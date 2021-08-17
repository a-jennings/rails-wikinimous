class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to articles_path
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end


end
