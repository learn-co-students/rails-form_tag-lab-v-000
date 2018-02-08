Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/new', to: 'students#new' 
  post '/students', to: 'students#create'
end
