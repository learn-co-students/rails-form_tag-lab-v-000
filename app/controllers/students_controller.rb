class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name]
    )
    student.save
    #binding.pry
    redirect_to student_path(student)
  end

  def new

  end

  def show
    @student = Student.find(params[:id])
  end

end
