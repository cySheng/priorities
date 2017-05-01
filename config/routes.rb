Rails.application.routes.draw do
	root 'priorities#index'
	resources :priorities 
end
