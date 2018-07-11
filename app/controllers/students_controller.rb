class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(first_name: params['first_name'], last_name:['last_name'])
    @student.save
    redirect_to students_path
  end

end
