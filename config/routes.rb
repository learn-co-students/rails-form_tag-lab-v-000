Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  
  post '/students/new', to: 'students#new', as: 'new'
end
