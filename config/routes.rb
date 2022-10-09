Rails.application.routes.draw do
  devise_for :users
  resources :profiles

  # get 'profiles/new'
  # get 'profiles/show/:id', to: 'profiles#show', as: 'user_profile'
  # get 'profiles/update', to: 'profiles#update'
  # get 'profiles/destroy', to: 'profile#destroy'

  root 'static_pages#home'
  get 'static_pages/home', to: 'static_pages#home', as: 'home'
  get 'static_pages/help', to: 'static_pages#help', as: 'help'
  get 'static_pages/about', to: 'static_pages#about', as: 'about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
