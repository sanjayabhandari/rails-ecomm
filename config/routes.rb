Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'dashboard#index'
  get "users/profile" => "users#profile"
end
