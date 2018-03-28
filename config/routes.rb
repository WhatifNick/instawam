Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :imageposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "imageposts#index"
end
