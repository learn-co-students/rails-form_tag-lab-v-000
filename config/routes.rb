Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/:id', to: 'students#show', as: 'student'
  get '/students/new' => 'students#new', as: 'new_student'
  post '/students' => 'students#create'
end
