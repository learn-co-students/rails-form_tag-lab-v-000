class StudentsController < ApplicationController

  def index # implicitly render the views/students/index.html.erb view file, which has the same name as this #index method (action)
    @students = Student.all
  end

  def show # implicitly render the views/students/show.html.erb view file, which has the same name as this #show method (action)
    @student = Student.find(params[:id])
  end

  def new # implicitly render the views/students/new.html.erb view file, which has the same name as this #new method (action)
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

end
