Rails.application.routes.draw do
  devise_for :users
  root to:"phrases#progress"

  resources :users, only: [:edit,:update,:index,:show]
  
  resources :phrases, only: [:new, :create,:edit, :update] do
    collection do
      get 'search'
    end
  end
  
  resources :articles
  resources :rooms, only: [:new,:create]
end
