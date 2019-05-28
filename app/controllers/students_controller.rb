class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new

  end

  def create
    redirect_to student_path(Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name]).id)
  end

  def show
    @student = Student.find(params[:id])
  end

end
