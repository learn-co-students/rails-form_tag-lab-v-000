class StudentsController < ApplicationController
    before_action :set_student, only: :show
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student= Student.last
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to new_student_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end
