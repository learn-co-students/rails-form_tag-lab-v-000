class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    # @student = Student.create
    @student = params
    redirect_to new_student_path(student: @student)
  end
end
