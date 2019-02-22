Rails.application.routes.draw do
  get 'listes/index'
  get 'listes/new'
  get 'listes/create'
  get 'listes/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listes, only: [:index, :new, :create, :destroy]   
  root "listes#index"  
end
