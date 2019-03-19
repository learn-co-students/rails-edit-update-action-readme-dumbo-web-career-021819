class ArticlesController < ApplicationController

  #/articles
  def index
    @articles = Article.all
  end


  #/articles/1
  def show
    @article = Article.find(params[:id])
  end

  #always going to create a new instance
  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

#render the edit form
#always going to find an instance
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end


end
