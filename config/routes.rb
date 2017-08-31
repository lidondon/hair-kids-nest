Rails.application.routes.draw do
	root 'pets#index'
	resources :pets
	post 'test/test'
end
