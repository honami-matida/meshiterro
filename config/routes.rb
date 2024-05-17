Rails.application.routes.draw do
  devise_for :users
  get 'homes/about' => 'homes#about',as: 'about'
  root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  #resources :lists
  # For user on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
