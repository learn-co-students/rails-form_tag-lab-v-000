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
  	@student = Student.create
  	@student.first_name = params[:first_name]
  	@student.last_name = params[:last_name]
	@student.save
  	redirect_to students_path
  end

end
