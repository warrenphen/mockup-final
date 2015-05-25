Rails.application.routes.draw do

  devise_for :users do
  	:enrollments
  end

  resources :courses do
  	resources :lessons
	end

  root :to => "dashboard#front"

  get '/front', to: 'dashboard#front'
  get '/tracks', to: 'dashboard#tracks'

end
