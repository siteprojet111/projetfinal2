Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :demandeurs

	resources :formations do
	    collection do
	        get "liste_formations"
	    end
	end
	resources :demandes do
	    collection do
	        get "liste_demandes"
	    end
	end

	root 'demandeurs#index'
	
end
