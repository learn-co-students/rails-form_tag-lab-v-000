Rails.application.routes.draw do
  resources :students, only: [:index, :new, :show]
  # get '/students/new' => 'students#new', as: "new_student"
  # get '/students/:id', to: 'students#show', as: 'student'
  post '/students' => 'students#create'
end
