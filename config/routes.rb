Rails.application.routes.draw do
	root 'pets#index'
	resources :pets
	resources :blacklists
	resources :hospitals
	get 'client_response/client'
end
