class RalliesController < ApplicationController
  before_action :set_rally, only: %i[ show edit update destroy ]

  def show
    @article = Article.new
  end

  def new
    @rally = Rally.new
  end

  def edit
  end

  def create
    @rally = Rally.new(rally_params)

    if @rally.save
      redirect_to @rally, notice: "Le rallye \"#{@rally.title}\" a été ajouté."
    else
      render :new, alert: "Erreur lors de la création du rally."
    end
  end

  def update
    if @rally.update(rally_params)
      redirect_to @rally, notice: "Le rallye \"#{@rally.title}\" a été édité."
    else
      render :new, alert: "Erreur lors de la mise à jour du rally."
    end
  end

  def destroy
    @rally.destroy
    redirect_to root_path, notice: "Le rallye a été effacé"
  end

  private
    def set_rally
      @rally = Rally.find(params[:id])
    end

    def rally_params
      params.require(:rally).permit(:title, :presentation)
    end
end
