Rails.application.routes.draw do
  root 'categories#index'
  
  
  resources :categories do 
    resources :composers, only: [:index]
  end 

  resources :composers, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
