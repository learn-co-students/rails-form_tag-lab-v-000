class StudentsController < ApplicationController
  before_action :find_student, only: :show
  def index
    @students = Student.all
  end

  def show
    @student
  end

  def new
  end

  def create
    student = Student.create(first_name: params[:first_name],
                   last_name: params[:last_name])

    redirect_to student
  end

  private
  def find_student
    @student = Student.find(params[:id])
  end

end
