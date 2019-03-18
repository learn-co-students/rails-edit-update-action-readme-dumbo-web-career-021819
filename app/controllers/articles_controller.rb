class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    set_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: params[:title], description: params[:description])
    redirect_to article_path(@article)
  end

  def edit
    set_article
  end

  def update
    set_article
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end



  # add edit and update methods here
end
