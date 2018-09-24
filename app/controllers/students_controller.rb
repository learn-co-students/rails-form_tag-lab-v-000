class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  



end
