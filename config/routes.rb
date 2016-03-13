Rails.application.routes.draw do
  resources :students, only: [:index, :create, :new]
  get '/student/:id', to: 'students#show', as: 'student'
end
