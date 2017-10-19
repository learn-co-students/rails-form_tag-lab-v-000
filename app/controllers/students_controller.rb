class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])

    redirect_to student_path(@student) #student_path need :id as argument; redirects to show page
  end

end
