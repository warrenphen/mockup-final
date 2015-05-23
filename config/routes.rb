Rails.application.routes.draw do

  resources :lessons
  devise_for :users

  resources :courses do
  	resources :enrollments
	end

  root :to => "dashboard#front"

  get '/front', to: 'dashboard#front'
  get '/tracks', to: 'dashboard#tracks'

end
