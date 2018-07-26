Rails.application.routes.draw do
  
  resources :students, only: [:index, :new, :create]
  

  get '/students/:id', to: 'students#show', as: 'student'
   
# draw means where we are going//// method is called "action" in rails controller
end
