Rails.application.routes.draw do
  resources :learn_favorites
  resources :learn_images
  resources :learn_comments
  resources :post_images
  resources :post_likes
  resources :post_comments
  resources :disscuss_comments
  resources :learns
  resources :posts
  resources :discusses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
