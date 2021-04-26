class StudentsController < ApplicationController
  before_action :set_students, only: [:index, :new]

  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    new_student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to new_student_path
  end

  private

  def set_students
    @students = Student.all
  end
end
