class ArticlesController < ApplicationControlle

  def index
    @articles=Article.includes(:user).order("created_at DESC")
  end

  def new
    @article=Article.new
  end

  def create
    Article.create(article_params)
  end

  private

  def article_params
    params.require(:article)
          .permit(:title,:content,:category_id,:language_id).merge(user_id:current_user.id)
  end
end
