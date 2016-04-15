Rails.application.routes.draw do
  resources :students, only: [:new, :create, :index]
  get '/student/:id', to: 'students#show', as: 'student'
end
