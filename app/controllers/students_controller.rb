class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  	render 'students/new'
  end

  def create
  	new_student=Student.create(first_name: params[:first_name], last_name: params[:last_name])
  	#binding.pry
  	redirect_to students_path
  end
end
