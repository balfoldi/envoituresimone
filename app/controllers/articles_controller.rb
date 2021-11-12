class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ update destroy ]

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article.rally, notice: "L'article \"#{@article.title}\" a été créé."
    else
      render :new, alert: "Erreur lors de la mise à jour de l'article."
    end
  end

  def update
    @article.image.purge if params[:article][:delete_image] == "1"
    if @article.update(article_params)
      redirect_to @article.rally, notice: "L'article \"#{@article.title}\" a été mis à jour."
    else
      render :new, alert: "Erreur lors de la mise à jour de l'article."
    end
  end

  def destroy
    @article.destroy
    redirect_to @article.rally, notice: "L'article \"#{@article.title}\" a été effacé."
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :rally_id, :image)
    end
end
