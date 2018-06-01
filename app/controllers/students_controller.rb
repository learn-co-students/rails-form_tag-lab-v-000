class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.new(first_name: params[:first_name], last_name: params[:last_name])
     redirect_to new_student_path
  end

end
