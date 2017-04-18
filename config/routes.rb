Rails.application.routes.draw do
  resources :students, only: [:index, :create]
  get '/student/new', to: 'students#new', as: 'new_student'
  get '/student/:id', to: 'students#show', as: 'student'
end
