class ArticlesController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy

  def create
    @article = current_user.microposts.build(params[:article])
    if @article.save
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @article.destroy
    redirect_to root_url
  end
def comment
     
    @article=Article.find(params[:articleid]) 
    @comment = Comment.new( :article => @article )
    
 end
  private

    def correct_user
      @article = current_user.articles.find_by_id(params[:id])
      redirect_to root_url if @article.nil?
    end
end
