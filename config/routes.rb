Rails.application.routes.draw do
  devise_for :users
  root to:"phrases#progress"

  resources :users, only: [:index,:show,:edit,:update]
  
  resources :phrases, only: [:new, :create,:edit, :update] do
    collection do
      get 'search'
    end
  end
  
  resources :rooms, only: [:index,:new,:create] do
    resources :messages, only: [:index, :create]
  end

  resources :articles
  
end
