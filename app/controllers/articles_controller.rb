class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    Article.create article_params
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
