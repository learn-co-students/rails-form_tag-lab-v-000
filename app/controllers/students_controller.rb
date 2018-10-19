class StudentsController < ApplicationController
  
  # CReding-UD
  def index
    @students = Student.all
  end

  # CRUD - REDING 
  def show
    @student = Student.find(params[:id])
  end

  # CREATE - RUD 
  # RENDER FORM
  def new
  end

  def create 
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path(@student)
  end

end
