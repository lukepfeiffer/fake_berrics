class NewsArticlesController < ApplicationController
  def index
  end

  def new
    @news_article = NewsArticle.new
  end

  def create
    @news_article = NewsArticle.new(news_article_params)
    if @news_article.save
      redirect_to news_articles_path
    else
      render new_news_article_path
    end
  end

  def show
  end

  def news_article_params
    params.require(:news_article).permit(
      :title,
      :content,
      :filepicker_url
    )
  end
end
