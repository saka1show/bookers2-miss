Rails.application.routes.draw do
devise_for :users
root to: "homes#top"
get '/homes/about' => 'homes#about', as: 'about'

resources :books, only: [:new, :create, :index, :show]
resources :homes
resources :users, only: [:new, :create, :index, :show]

end
