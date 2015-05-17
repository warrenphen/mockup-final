Rails.application.routes.draw do


  devise_for :users
  resources :courses 
  resources :registrations
  root :to => "dashboard#front"

  get '/front', to: 'dashboard#front'

end
