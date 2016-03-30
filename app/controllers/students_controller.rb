class StudentsController < ApplicationController
  
  def new
  end

  def create
    @student = params
    redirect_to new_student_path(@student)
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
