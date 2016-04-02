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
    @student = params
    redirect_to new_student_path(post: @student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
