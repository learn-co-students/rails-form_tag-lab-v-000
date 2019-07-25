
Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create, :new]
  
  # post '/students', to: 'students#create'

end