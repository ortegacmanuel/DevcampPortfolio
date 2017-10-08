Rails.application.routes.draw do

  # API endpoints
  namespace :api do
    resources :portfolios
  end

  resources :portfolios
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
