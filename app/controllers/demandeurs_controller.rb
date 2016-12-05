class DemandeursController < ApplicationController
	def liste_offres
	end

	def etape_1
	end

	def etape_2
	end

	def etape_3
	end

	def etape_4
	end

	private
	def demandeur_params
		params.require(:demandeur).permit(:email, :code_acces, :prenom, :nom, :age, :civilite, :s_maritale, :adresse, :wilaya, :commune, :tel1, :tel2, :permis, :sevice_national, :competence_info)
	end

	def demandeur_find
		@demandeur = Demandeur.find(params[:id])
	end

end
