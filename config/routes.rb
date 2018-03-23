Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"

  patch '/:id', to: 'pokemons#capture', as: 'capture'
  patch 'trainers/:id', to: 'pokemons#damage', as: 'damage'

  resources :trainers
  resources :pokemons, only: [:new, :create]
end
