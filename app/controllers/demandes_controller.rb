class DemandesController < ApplicationController
	before_action :demande_find, only: [:show, :edit, :update, :destroy]

	def liste_demandes
		@demandes = Demande.all
	end

	def new
		@demande = Demande.new

	end

	def create
		@demande = Demande.new(demande_params)
		if @demande.save
			redirect_to @demande
		else 
			render "New"
		end
	end

	def show
		/@demande = Demande.where(demandeur_id: @demande.demandeur_id).take/ 
		/si je décommente cette ligne il me retourne dans le show la première demande qui a été créee/
	end

	def edit
	end

	def destroy
	end

	def update
	end

	private
	def demande_params
		params.require(:demande).permit(:poste_demande, :secteur, :wilaya_demande, :commune_demande, :description, :demandeur_id)
	end

	def demande_find
		@demande = Demande.find(params[:id])
	end
end
