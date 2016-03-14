class StudentsController < ApplicationController
  
  def index
    @students = Student.all
# byebug
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
# byebug
    @student=Student.create(first_name: params[:first_name], last_name: params[:last_name])
# byebug
    redirect_to student_path(@student)

  end

end
