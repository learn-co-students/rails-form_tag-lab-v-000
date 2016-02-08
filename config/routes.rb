Rails.application.routes.draw do
  resources :students, only: [:index, :new]	
  get '/student/:id', to: 'students#show', as: 'student'
  post '/students/new', to: 'students#create'
  # get '/students/new', to: 'students#new'
end
