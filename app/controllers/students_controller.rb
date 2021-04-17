class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  #new method/paths for the new.html.erb form
  def new #given to config/routes.rb
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    #find prefix needed using rake routes
    #redirect_to prefix_path
    redirect_to students_path
    #have the form redirect back to the new view template ^ from readme
    #Readme is wrong you need to have it redirect to students path 
  end
  
  

end
