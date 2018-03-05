class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end



  def create
    #byebug
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    #byebug
    redirect_to students_path
  end
end
