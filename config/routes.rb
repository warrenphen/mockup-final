Rails.application.routes.draw do


  devise_for :users
  resources :courses
  root :to => "dashboard#front"

  get '/front', to: 'dashboard#front'

end
