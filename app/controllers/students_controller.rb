class StudentsController < ApplicationController
  #runs before controller actions.
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    session[:params] = params.inspect
    redirect_to new_student_path
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
