Rails.application.routes.draw do
  resources :students, only: [:index, :new]

  post '/students', to: 'students#create' 


  get '/students/:id', to: 'students#show', as: 'student'


end
