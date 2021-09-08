Rails.application.routes.draw do
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'

  
  resources :workers
  resources :companies
  resources :employees
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "home/index"

  

end










