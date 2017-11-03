Rails.application.routes.draw do

  get 'user/create'

  get 'user/show'

	# Authentication
	get 'auth/:provider/callback', to: 'sessions#create'
	get 'auth/failure', to: redirect('/')
	get 'signout', to: 'sessions#destroy', as: 'signout'
	resources :sessions, only: [:create, :destroy]

	# Homepages
	root 'home#logged_in'
	get 'authenticate', to: 'home#logged_out'
	resource :home, only: [:logged_in, :logged_out]

end
