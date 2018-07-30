Rails.application.routes.draw do
  resources :students, only: [:index, :create]
  get '/students/new', to: 'students#new', as: 'new_student'

  post '/students/new', to: 'students#create'

  get '/students/:id', to: 'students#show', as: 'student'

end
