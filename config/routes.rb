Rails.application.routes.draw do
  root to: 'pages#home'

  resources :buddies, only: [:index]
end
