Rails.application.routes.draw do


  devise_for :users
  resources :courses do
  	resources :registrations
  end
  root :to => "dashboard#front"

  get '/front', to: 'dashboard#front'

end
