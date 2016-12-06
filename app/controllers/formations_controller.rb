class FormationsController < ApplicationController
	before_action :find_formation, only: [:show, :edit, :update, :destroy]
	def liste_formations
		@formations = Formation.all
	end

	def new
		@formation = Formation.new
	end

	def create
		/@formation= current_candidat.demandes.build(demande_params)/
		@formation = Formation.new(formation_params)
		if @formation.save
			redirect_to @formation
		else
			render "New"
		end
	end

	def show
		@formation=Formation.where(demandeur_id: @formation.demandeur_id).take
	end

	def edit
	end 

	def update
	end

	def destroy
	end

	private

	def formation_params
        params.require(:formation).permit(:date_df, :date_ff, :titre_formation, :institut, :demandeur_id)
    end
    
    def find_formation
        @formation= Formation.find(params[:id])
        
    end
end
