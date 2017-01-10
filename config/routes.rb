Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  # get '/student/:id', to: 'students#show', as: 'student'
end
