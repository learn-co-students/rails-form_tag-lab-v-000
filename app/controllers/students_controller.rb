class StudentsController < ApplicationController
  before_action :set_students, only: [:index]
  before_action :set_student, only: [:show]

  def index
  end

  def show

  end

  def new

  end

  def create
    # binding.pry
   Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  private

  def set_students
    @students = Student.all
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
