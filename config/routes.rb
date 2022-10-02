Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home', to: 'static_pages#home', as: 'home'
  get 'static_pages/help', to: 'static_pages#help', as: 'help'
  get 'static_pages/about', to: 'static_pages#about', as: 'about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
