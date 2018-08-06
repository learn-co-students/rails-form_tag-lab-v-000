Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
#  post '/students', to: 'students#create', as: 'new_student'
end
