class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    # save params in session hash to access in view
    session[:student_form_params] = params[:student]
    redirect_to new_student_path
  end

end
