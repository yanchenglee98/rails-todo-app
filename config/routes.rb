Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  root "tasks#welcome" # sets articles index as home page

  get 'search', to: "tasks#search"
  get 'about', to: "tasks#about"

  resources :articles do # condenses all methods (e.g. get "/articles", to: "articles#index", get "/articles/:id", to: "articles#show") of articles 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
