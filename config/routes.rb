Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create]

  get '/student/new', to: 'students#new', as: 'new_student'

  post '/student/new', to: 'students#create'
end
