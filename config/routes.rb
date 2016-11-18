Rails.application.routes.draw do
<<<<<<< HEAD
  resources :students, only: [:index, :new, :create]
  
=======
  resources :students, only: [:index, :create, :new]
>>>>>>> ee25b24e6d878cf859e1b9b41fa3118f26152b37
  get '/student/:id', to: 'students#show', as: 'student'
end
