Rails.application.routes.draw do
  
  resources :posts

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'

  resources :advertisements, only: [:index, :show]

end