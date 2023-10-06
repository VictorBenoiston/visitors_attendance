Rails.application.routes.draw do
  resources :visitantes
  root 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  resources :users, only: [:new, :create]
  resources :visitantes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
