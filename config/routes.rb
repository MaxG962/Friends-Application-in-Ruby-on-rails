Rails.application.routes.draw do
  devise_for :users
  resources :friends_infos
  # get 'index/home'
  root 'index#home'  #change to signIn
  get 'index/About'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
