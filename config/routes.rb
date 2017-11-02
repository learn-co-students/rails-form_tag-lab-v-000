Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
end

# code line 2 is the refactored version of the following routes:

# get '/students', to: 'students#index'
# route is GET request to localhost:3000/students to display the index of all students
# route is mapped to #index controller action (method) in the StudentsController class
# the name of this route is students (by default, the route's name comes from the path '/students')
# Therefore, the route helper method #students_path returns "/students" (the URL of link to index page)

# get '/students/new', to: 'students#new'
# route is GET request to localhost:3000/students/new, where the form to create a new student is presented
# route is mapped to the #new controller action (method) in the StudentsController class
# Following standard RESTful conventions, the name of this route is new_student
# Therefore, the route helper method #new_student_path can be called to return "/students/new" (the URL of link to form for creating a new student)

# post '/students', to: 'students#create'
# route is POST request to '/students' (since we're creating a new student)
# route receives the POST request sent by the form to create a new student upon the form's submission
# route receives the data submitted in the form to create a new student
# route is mapped to #create controller action (method) defined in StudentsController class
