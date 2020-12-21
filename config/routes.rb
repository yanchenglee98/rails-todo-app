Rails.application.routes.draw do
  root "articles#index" # sets articles index as home page

  resources :articles do # condenses all methods (e.g. get "/articles", to: "articles#index", get "/articles/:id", to: "articles#show") of articles 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end