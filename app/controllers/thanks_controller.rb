class ThanksController < ApplicationController
  before_action :set_thank, only: %i[ edit update destroy ]

  def index
    @thanks = Thank.all
  end

  def create
    @thank = Thank.new(thank_params)

    if @thank.save
      redirect_to thanks_path, notice: "Le remerciement \"#{@thank.id}\" a été ajouté."
    else
      render :new, alert: "Erreur lors de la création du remerciement."
    end
  end

  def update
    if @thank.update(thank_params)
      @thank.logo.purge if params[:thank][:delete_logo] == "1"
      redirect_to thanks_path, notice: "Le remerciement \"#{@thank.id}\" a été mis à jour."
    else
      render :new, alert: "Erreur lors de la création du remerciement."
    end
  end

  def destroy
    @thank.destroy
    redirect_to thanks_path, notice: "Le remerciement \"#{@thank.id}\" a été effacé."
  end

  private
    def set_thank
      @thank = Thank.find(params[:id])
    end

    def thank_params
      params.require(:thank).permit(:content)
    end
end
