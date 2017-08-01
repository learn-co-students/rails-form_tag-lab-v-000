Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  get '/student/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create', as: 'create'
end
