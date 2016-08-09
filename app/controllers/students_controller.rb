class StudentsController < ApplicationController

  def new
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student.create(params)
    redirect_to student_path(@student)
    # session[:form_params] = params.inspect
    # redirect_to new_student_path
  end


end
