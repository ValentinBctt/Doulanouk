# filepath: /home/valentinbctt/code/ValentinBctt/Doulanouk/config/routes.rb
Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  root 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :prestations
  resources :rdvs
  resources :home
  resources :articles

  resources :soins, only: [:index, :show]
  resources :accompagnements, only: [:index]

end
