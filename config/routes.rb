Rails.application.routes.draw do
  resources :tasks
  root "tasks#welcome" # sets articles index as home page

  get 'search', to: "tasks#search"

  resources :articles do # condenses all methods (e.g. get "/articles", to: "articles#index", get "/articles/:id", to: "articles#show") of articles 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
