Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  resources :events do
    member do
      post '/sendsms' => 'events#sendsms'
    end
  end
  resources :tastes, only: [:new, :create]
  resources :participations, only: [:update]
  # post 'twilio/sendsms' => 'twilio#sendsms'

  mount Attachinary::Engine => "/attachinary"

end
