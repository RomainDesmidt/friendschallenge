Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # static pages
  get 'styleguide', to: 'pages#styleguide'
end
