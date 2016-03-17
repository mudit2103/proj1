Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  #resources :pokemons, as: :capture

  # get 'pokemons/new', to: 'pokemon#new'

  resources :pokemons, only: [:create, :new]

  patch 'pokemons/:id', to: 'pokemons#capture', as: :capture
  patch 'pokemons/:id/damage', to: 'pokemons#damage', as: :damage
  # post 'pokemons/:id/damage', to: 'pokemons#damage'
  # patch 'pokemons/:id/damage', to: 'pokemons#damage'
  # get 'pokemons/:id/damage', to: 'pokemons#damage'
  # post 'pokemons/:id', to: 'pokemons#capture'
  # patch 'pokemons/:id', to: 'pokemons#capture'
  # get 'pokemons/:id', to: 'pokemons#capture'
end
