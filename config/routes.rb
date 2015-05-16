Rails.application.routes.draw do


  resources :courses
  root :to => "dashboard#front"

  get '/front', to: 'dashboard#front'

end
