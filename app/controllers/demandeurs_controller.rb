class DemandeursController < ApplicationController
	before_action :demandeur_find, only: [:show, :edit, :update, :destroy]
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

	def index
		@demandeurs = Demandeur.all
	end

	def new
		@demandeur = Demandeur.new
	end

	def create
		@demandeur = Demandeur.new(demandeur_params)
		if @demandeur.save
			redirect_to @demandeur
		else
			render "New"
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end



	private
	def demandeur_params
		params.require(:demandeur).permit(:email, :code_acces, :prenom, :nom, :age, :civilite, :s_maritale, :adresse, :wilaya, :commune, :tel1, :tel2, :permis, :service_national, :competence_info, :photo_profil)
	end

	def demandeur_find
		@demandeur = Demandeur.find(params[:id])
	end

end
