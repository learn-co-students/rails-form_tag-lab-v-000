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
    Student.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to students_path
  end
end
