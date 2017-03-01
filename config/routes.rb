Rails.application.routes.draw do

  get 'participations/new'

  get 'participations/create'

  get 'participations/update'

  devise_for :users
  root to: 'pages#home'
  resources :events
  resources :participations, only: [:new, :create, :update]
end
