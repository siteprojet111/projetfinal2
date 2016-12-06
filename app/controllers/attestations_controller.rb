class AttestationsController < ApplicationController
  before_action :set_attestation, only: [:show, :edit, :update, :destroy]

  # GET /attestations
  # GET /attestations.json
  def index
    @attestations = Attestation.all
  end

  # GET /attestations/1
  # GET /attestations/1.json
  def show
  end

  # GET /attestations/new
  def new
    @attestation = Attestation.new
  end

  # GET /attestations/1/edit
  def edit
  end

  # POST /attestations
  # POST /attestations.json
  def create
    @attestation = Attestation.new(attestation_params)

    respond_to do |format|
      if @attestation.save
        format.html { redirect_to @attestation, notice: 'Attestation was successfully created.' }
        format.json { render :show, status: :created, location: @attestation }
      else
        format.html { render :new }
        format.json { render json: @attestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attestations/1
  # PATCH/PUT /attestations/1.json
  def update
    respond_to do |format|
      if @attestation.update(attestation_params)
        format.html { redirect_to @attestation, notice: 'Attestation was successfully updated.' }
        format.json { render :show, status: :ok, location: @attestation }
      else
        format.html { render :edit }
        format.json { render json: @attestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attestations/1
  # DELETE /attestations/1.json
  def destroy
    @attestation.destroy
    respond_to do |format|
      format.html { redirect_to attestations_url, notice: 'Attestation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attestation
      @attestation = Attestation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attestation_params
      params.require(:attestation).permit(:titre_attes, :universite, :date_da, :date_fa)
    end
end
