Rails.application.routes.draw do
  devise_for :users

  root 'players#index'
  
  resources :players do
  	resources :noobs
  end
end
