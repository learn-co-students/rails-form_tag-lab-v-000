class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
  end

  def allowed_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def create
    Student.create(allowed_params)
    redirect_to students_path
  end

end
