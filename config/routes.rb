Rails.application.routes.draw do
  devise_for :users
  get 'homes/about' => 'homes#about',as: 'about'
  root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show]
  #resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
