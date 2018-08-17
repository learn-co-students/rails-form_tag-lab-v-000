Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students' => 'students#create'
   #    Prefix  Verb  URI Pattern                Controller#Action
   #    students GET  /students(.:format)        students#index
   # new_student GET  /students/new(.:format)    students#new
   #     student GET  /students/:id(.:format)    students#show
   #    students POST /students(.:format)        students#create
end
