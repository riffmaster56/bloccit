Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:update]

  resources :topics do
    resources :posts, except: [:index] do
      resources :summaries, only: [:new, :create, :show]
    end
  end
  
  resources :posts, only: [] do
    resources :comments, only: [:new, :create, :show, :destroy]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
