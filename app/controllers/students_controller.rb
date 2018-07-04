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
    #byebug
    @student = Student.create!("first_name"=>"Margaery", "last_name"=>"Tyre
ll")
  end

end
