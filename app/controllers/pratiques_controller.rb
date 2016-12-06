class PratiquesController < ApplicationController
  before_action :set_pratique, only: [:show, :edit, :update, :destroy]

  # GET /pratiques
  # GET /pratiques.json
  def index
    @pratiques = Pratique.all
  end

  # GET /pratiques/1
  # GET /pratiques/1.json
  def show
  end

  # GET /pratiques/new
  def new
    @pratique = Pratique.new
  end

  # GET /pratiques/1/edit
  def edit
  end

  # POST /pratiques
  # POST /pratiques.json
  def create
    @pratique = Pratique.new(pratique_params)

    respond_to do |format|
      if @pratique.save
        format.html { redirect_to @pratique, notice: 'Pratique was successfully created.' }
        format.json { render :show, status: :created, location: @pratique }
      else
        format.html { render :new }
        format.json { render json: @pratique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pratiques/1
  # PATCH/PUT /pratiques/1.json
  def update
    respond_to do |format|
      if @pratique.update(pratique_params)
        format.html { redirect_to @pratique, notice: 'Pratique was successfully updated.' }
        format.json { render :show, status: :ok, location: @pratique }
      else
        format.html { render :edit }
        format.json { render json: @pratique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratiques/1
  # DELETE /pratiques/1.json
  def destroy
    @pratique.destroy
    respond_to do |format|
      format.html { redirect_to pratiques_url, notice: 'Pratique was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pratique
      @pratique = Pratique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pratique_params
      params.require(:pratique).permit(:titre_attes, :universite, :date_da, :date_fa)
    end
end
