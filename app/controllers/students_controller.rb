class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def new
  end

  def create
    @student = params
    redirect_to new_student_path(post: @student)
  end

  def index
    @student = Student.all
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
