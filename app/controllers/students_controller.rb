class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    s = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(s)
  end

  def show
    @student = Student.find(params[:id])
  end

end
