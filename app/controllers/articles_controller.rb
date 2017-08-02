class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    Article.create article_params

    redirect_to articles_path, notice: "New article created"
  end

  def index
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
