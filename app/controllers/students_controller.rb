class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end


  def create
  	session[:form_params] = params.inspect
  	redirect_to new_student_path
  end 

  def new
  	# automatic
  end 
  
  def show
   #implicit 
  end




  private

  	def set_student
  		@student = Student.find(params[:id])
  	end

end
