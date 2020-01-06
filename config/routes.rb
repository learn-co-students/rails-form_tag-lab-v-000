Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :students, only: [:index, :new, :create]
  # get '/student/:id', to: 'students#show', as: 'student'

  resources :students, only: :index
  get '/student/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create', as: 'create_student'
  get '/students/new', to: 'students#new', as: 'new_student'

end
