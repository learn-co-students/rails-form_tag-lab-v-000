class StudentsController < ApplicationController
# At a high level, you need to build a form to create a new student, have the form
#  redirect back to the new view template, and print out the form params to the
#  screen. Below are a few items to keep in mind
# -Draw a new and create route for the students resource
# -Print out the student value to the view template page
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    #session[:form_params] = params.inspect
    redirect_to students_path
  end


end
