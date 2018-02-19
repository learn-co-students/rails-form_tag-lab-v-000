Rails.application.routes.draw do
  resources :students, only: :index
  post '/students', to: 'students#create'
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'

end
