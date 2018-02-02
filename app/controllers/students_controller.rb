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
    @student=  Student.create(first_name: params[:first_name], last_name: params[:last_name])
      redirect_to student_path(@student)
  end

  #note that another way of doing new.html.erb is
  #<%= form_tag students_path do%>
  #      <label>First Name:</label></br>
  #      <%= text_field_tag :"student[first_name]"%><br>

  #      <label>Last Name:</label></br>
  #      <%= text_field_tag :"student[last_name]"%><br>

  #      <%= submit_tag "Submit Student"%>
  #<%end%>

  #this will also change the create action in student controller to
      #def create
        #@student=  Student.create(params[:student])
          #redirect_to student_path(@student)
        #end

end
