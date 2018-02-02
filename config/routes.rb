Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  #4 of 7 possible
  #get '/students/:id', to: 'students#show', as: 'student'
end
