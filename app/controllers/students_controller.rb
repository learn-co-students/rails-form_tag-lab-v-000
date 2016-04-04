class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = params
    redirect_to new_student_path(student: @student)
  end
end
