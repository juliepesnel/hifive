Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :events
  resources :participations, only: [:new, :create, :update]
end
