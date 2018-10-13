Rails.application.routes.draw do
  resources :students, only: [:new, :index, :create]

  get '/students/:id', to: 'students#show', as: 'student'


end
