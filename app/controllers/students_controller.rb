require 'pry'
class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new #shows user the form page
  end

  def create #posts form entry through params and creates a new student
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end
end
