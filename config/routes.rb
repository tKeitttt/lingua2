Rails.application.routes.draw do
  devise_for :users
  root to:"phrases#progress"
  resources :phrases, only: [:new, :create] 
end
