class RalliesController < ApplicationController
  before_action :set_rally, only: %i[ show edit update destroy ]

  # GET /rallies or /rallies.json
  def index
    @rallies = Rally.all
  end

  # GET /rallies/1 or /rallies/1.json
  def show
    @article = Article.new
  end

  # GET /rallies/new
  def new
    @rally = Rally.new
  end

  # GET /rallies/1/edit
  def edit
  end

  # POST /rallies or /rallies.json
  def create
    @rally = Rally.new(rally_params)

    respond_to do |format|
      if @rally.save
        format.html { redirect_to @rally, notice: "Rally was successfully created." }
        format.json { render :show, status: :created, location: @rally }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rally.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rallies/1 or /rallies/1.json
  def update
    respond_to do |format|
      if @rally.update(rally_params)
        format.html { redirect_to @rally, notice: "Rally was successfully updated." }
        format.json { render :show, status: :ok, location: @rally }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rally.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rallies/1 or /rallies/1.json
  def destroy
    @rally.destroy
    respond_to do |format|
      format.html { redirect_to rallies_url, notice: "Rally was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rally
      @rally = Rally.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rally_params
      params.require(:rally).permit(:title, :presentation)
    end
end
