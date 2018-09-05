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
    @student = params[:first_name] +" " + params[:last_name]
    render 'students/new'
  end

end
