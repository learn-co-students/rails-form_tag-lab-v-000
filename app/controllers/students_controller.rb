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
    @student = Student.new(student_params)
    redirect_to (@student.save ? student_path(@student) : new_student_path)
  end

  private

  def student_params
    params.permit(:first_name, :last_name)
  end

end
