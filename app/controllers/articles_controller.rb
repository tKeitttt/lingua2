class ArticlesController < ApplicationController

  def index
    @articles=Article.includes(:user).order("created_at DESC")
  end

  def new
    @article=Article.new
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article)
          .permit(:title,:content,:category_id,:language_id,:image).merge(user_id:current_user.id)
  end
end
