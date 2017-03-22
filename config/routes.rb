Rails.application.routes.draw do
  get 'race_groups/show'

  get 'profile/show'

  get 'races/index'

  get 'races/show'

  root to: 'pages#home'
  devise_for :users

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
