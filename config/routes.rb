# filepath: /home/valentinbctt/code/ValentinBctt/Doulanouk/config/routes.rb
Rails.application.routes.draw do
  root 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :prestations
  resources :rdvs
end
