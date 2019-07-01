Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]
    #resources :controller_name/folder_name, only: [:method/path, :method/path]
  get '/students/:id', to: 'students#show', as: 'student'
end

#HELLO WORLD