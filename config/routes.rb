Rails.application.routes.draw do
  devise_for :users
  resources :players
  resources :noobs
  root 'players#index'
end
