Rails.application.routes.draw do


  get "/" => "users#home"
  devise_for :users
#  devise_for :users, :controllers => { registrations: 'registrations' }
#  get "/users" => "users#index"

  resources :jobs
  resources :ports
  resources :boats
  resources :photos, only: [:index, :new, :create, :show, :destroy]

end
