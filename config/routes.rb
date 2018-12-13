Rails.application.routes.draw do
  resources :students
  
  post '/students/create', to: 'students#new'
end
