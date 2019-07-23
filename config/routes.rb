
Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new]
  
  post 'students', to: 'students#new'

end