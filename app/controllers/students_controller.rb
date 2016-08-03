class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.new(first_name: params[:first_name], last_name: params[:last_name])
    @student = params
    redirect_to new_student_path(student: @student)
  end
end
