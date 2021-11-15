class PartnersController < ApplicationController
  before_action :set_partner, only: %i[ edit update destroy ]

  def index
    @partners = Partner.all
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)

    if @partner.save
      redirect_to partners_path, notice: "Le partenaire \"#{@partner.name}\" a été ajouté."
    else
      render :new, alert: "Erreur lors de la création du partenaire."
    end
  end

  def update
    if @partner.update(partner_params)
      @partner.logo.purge if params[:partner][:delete_logo] == "1"
      redirect_to partners_path, notice: "Le partenaire \"#{@partner.name}\" a été mis à jour."
    else
      render :new, alert: "Erreur lors de la création du partenaire."
    end
  end

  def destroy
    @partner.destroy
    redirect_to partners_path, notice: "Le partenaire \"#{@partner.name}\" a été effacé."
  end

  private
    def set_partner
      @partner = Partner.find(params[:id])
    end

    def partner_params
      params.require(:partner).permit(:name, :description, :logo, :url)
    end
end
