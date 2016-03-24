Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create', as: 'create_student'
  get '/students', to: 'students#index', as: 'index_students'
  get '/student/:id', to: 'students#show', as: 'student'
end
