Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/new' => 'students#new', as: 'new_student'
  post '/students', to: 'students#create'

  get '/students/:id', to: 'students#show', as: 'student'
end
