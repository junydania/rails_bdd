class CommentsController < ApplicationController
  before_action  :set_article

  def create
    @comment = @article.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment successfully added"
      redirect_to article_path(@article)
    else
      flash[:error] = "Ooops!! Wrong email format"
      redirect_to article_path(@article)
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
      params.require(:comment).permit(:comment_content, :visitor_email)
  end

end
