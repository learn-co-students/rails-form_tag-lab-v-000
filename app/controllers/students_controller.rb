require 'pry'

class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    session[:student] = params[:first_name] + " " + params[:last_name]
    redirect_to new_student_path
  end

end
