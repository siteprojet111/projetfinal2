Rails.application.routes.draw do
  resources :pratiques
  resources :attestations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	
resources :homes do
	collection do
        get "accueil"
    end
end
resources :demandeurs
resources :offres do
    collection do
        get "liste_offres"
    end
end
root 'homes#accueil'
end
