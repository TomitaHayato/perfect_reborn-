Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "top_pages#index"

  resources :finishes, only: [:index]
  resources :questions, only: %i[index create update]
end
