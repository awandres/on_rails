class ArticlesController < ApplicationController

  def new
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  def private
    params.require(:article).permit(:text, :title)
  end
end
