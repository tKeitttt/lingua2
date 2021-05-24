Rails.application.routes.draw do
  devise_for :users
  root to:"phrases#progress"
  resources :phrases, only: [:new, :create,:edit, :update] do
    collection do
      get 'search'
    end
  end
end
