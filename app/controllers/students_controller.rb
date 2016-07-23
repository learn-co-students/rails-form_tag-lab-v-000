class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create!(first_name: params["first_name"], last_name: params["last_name"])
    @students = Student.all
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end

end
