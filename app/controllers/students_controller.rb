class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # displays form to submit a new student
  end

  def create
    # POST request comes here, create new student and redirects to index page
    Student.create(first_name: params[:first_name], last_name: params[:last_name])

    redirect_to students_path
  end
end
