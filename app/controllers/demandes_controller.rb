class DemandesController < ApplicationController
	def liste_demandes
	end

	private
	def demande_params
		params.require(:demande).permit(:poste_demande, :secteur, :wilaya_demande, :commune_demande, :description)
	end

	def demande_find
		@demandeur = Demande.find(params[:id])
	end
end
