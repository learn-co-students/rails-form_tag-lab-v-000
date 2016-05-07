class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    #binding.pry
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    #binding.pry
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])

    redirect_to student_path(@student)
  end

end