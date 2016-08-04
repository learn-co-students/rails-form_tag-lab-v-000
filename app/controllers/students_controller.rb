require 'pry'

class StudentsController < ApplicationController
  
  def new
  end

  def create
    @student = Student.new(params[:student])
    @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
    @student.save
    binding.pry
    redirect_to @student
    # THIS REDIRECTS TO THE STUDENT/ID ROUTE 
    # IT'S IMPLICIT FOR redirect_to student_path(@student)
  end 

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
