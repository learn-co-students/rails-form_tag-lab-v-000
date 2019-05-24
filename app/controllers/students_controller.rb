class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    Student.create(title: params[:student][:first_name], description: params[:student][:last_name])
    redirect_to students
  end

  def show
    @student = Student.find(params[:id])
  end

end
