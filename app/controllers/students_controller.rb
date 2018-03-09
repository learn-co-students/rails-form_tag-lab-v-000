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
    Student.create(first_name: params[:students][:first_name], last_name: params[:students][:last_name])
    redirect_to students_path
  end

end
