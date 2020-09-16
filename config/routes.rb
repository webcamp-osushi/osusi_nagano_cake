Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
  	root 'products#top'
  	resources :products, except: [:destroy]

  end
end
