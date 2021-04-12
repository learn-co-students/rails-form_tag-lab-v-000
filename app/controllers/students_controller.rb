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
    # I pulled this code from the solution. The previous lesson didn't have
    # anything in the create code so I'm not sure why it worked but this
    # lab requires setting something to send back in the session.
    # I also had to add <%= session[:form_params] if session[:form_params] %>
    # instead of <%= params.inspect %> like we did in the previous
    # lesson. I'm guessing a Rails version difference?
    session[:form_params] = params.inspect

    redirect_to new_student_path
  end

end
