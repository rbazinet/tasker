Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  resources :lists, only: [:new, :create, :destroy] do
    resources :tasks, only: [:show] do
      resources :comments, only: [:create]
    end
  end
end
