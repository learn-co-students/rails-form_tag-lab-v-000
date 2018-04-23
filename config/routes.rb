Rails.application.routes.draw do
  resources :students, only: [:index, :new]

  post '/students/new', to: 'students#new' 


  get '/students/:id', to: 'students#show', as: 'student'


end
