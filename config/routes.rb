Rails.application.routes.draw do
	root 'pets#index'
	resources :pets
	resources :blacklists
	get 'client_response/client'
end
