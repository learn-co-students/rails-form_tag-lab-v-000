class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
  	Student.create!(last_name: params[:last_name], first_name: params[:first_name])
  	redirect_to students_path
  end
end
