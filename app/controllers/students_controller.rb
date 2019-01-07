
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
    @student = Student.create(first_name: params[:first][:name], last_name: params[:last][:name])
    redirect_to student_path(@student)
  end

end
