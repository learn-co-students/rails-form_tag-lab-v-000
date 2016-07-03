Rails.application.routes.draw do
  resources :students, only: [:index, :create, :new, :show]
  #get '/student/:id', to: 'students#show', as: 'student'
end
