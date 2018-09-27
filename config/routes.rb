Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
  # get '/students/:id/new', to: 'students#new', as: 'new_student'
end
