Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  get '/students/:id', to: 'students#show', as: 'student'
  # get '/students/new', to: 'students#new', as: 'new_student'
  post '/students/create', to: 'students#create', as: 'create_student'
end
