class OffresController < ApplicationController
before_action :find_offre, only: [:show, :edit, :update, :destroy]
	def liste_offres
         @offre = Offre.all.order("created_at DESC")
         render :layout => "nav_offre"
    end

    def new
         @offre= Offre.new
         render :layout => "nav_offre"
    end

    def show
          / @profil= Profil.where(id: @offre.profil_id).take  /
    end
    
    def create
        @offre= Offre.new(offre_params)
        @offre.date_offre= Date.today
        
        if @offre.save
            redirect_to @offre
         else
            render "New"
        end
    end
    
    def edit
        
    end
    
    def update
        if @offre.update(offre_params)
            redirect_to @offre
        else
            render "Edit"
        end
    end
    
    def destroy
        @offre.destroy
        redirect_to "/offres/liste_offres"
    end
    
    
    private
    
    def offre_params
        params.require(:offre).permit(:poste_offre, :description_offre, :lieu, :critere, :duree)
    end


    
    def find_offre
        @offre= Offre.find(params[:id])
               
    end
    

end
