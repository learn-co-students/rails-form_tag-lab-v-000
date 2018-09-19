Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create', as: 'create_student'
end
