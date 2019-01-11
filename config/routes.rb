Rails.application.routes.draw do
  get 'students/index'
  
  resources :students

  root 'students#index'

end

