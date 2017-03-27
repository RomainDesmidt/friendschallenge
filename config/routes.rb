Rails.application.routes.draw do

  resources :race_groups, only: [ :show, :create ]

  root to: 'pages#home'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :races, only: [ :index, :show ]

  namespace :account do
    resource :profile, only: [ :show ]

    resources :races, only: [ :index ] do
      member do
        patch :confirm
      end
    end
  end

  # static pages
  get 'styleguide', to: 'pages#styleguide'
end
