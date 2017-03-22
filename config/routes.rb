Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :races, only: [ :index, :show ]

  namespace :account do
    resource :races, only: [ :index ] do
      member do
        patch 'confirm'
      end
    end
    resource :profile, only: [ :show ]
  end

  # static pages
  get 'styleguide', to: 'pages#styleguide'
end
