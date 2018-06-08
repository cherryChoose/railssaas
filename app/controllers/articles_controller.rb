class ArticlesController < ApplicationController
  def index
    @articles = Article.cached_published
  end

  def show
    @article = Article.cached_find(params[:id])
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_url, notice: "Created article."
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to @article, notice: "Updated article."
    else
      render :edit
    end
  end

  private
  def article_params
    params.require(:article).permit!
  end  
end
