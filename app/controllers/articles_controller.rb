class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    Article.create article_params

    redirect_to new_article_path, notice: "New article created"
  end

  def index
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
