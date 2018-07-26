class StudentsController < ApplicationController
  
  def index  # this is an action
    @students = Student.all
  end


  def new   # if you dont put anything in here, rails would automaticly route to the templetes "new"
    
  end

  def show
    @students = Student.find(params[:id])
  end

  def create
   # params is like a hash... with a lot of information on the inside catergories as key value peers

    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
    end


end # end the class
