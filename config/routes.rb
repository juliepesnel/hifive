Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :events
  resources :participations, only: [:update]

  mount Attachinary::Engine => "/attachinary"
end
