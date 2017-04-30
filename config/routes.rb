Rails.application.routes.draw do
  get '/student/:id', to: 'students#show', as: 'student'
  resources :students, only: [:index, :new, :create]
end
