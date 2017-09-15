Rails.application.routes.draw do
  resources :students, only: [:new, :index, :create]
  get '/student/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#new'
end
