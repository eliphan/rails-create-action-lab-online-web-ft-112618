class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(first_name: params[:students][:first_name], last_name: params[:students][:last_name])
    redirect_to student_path(@student)
  end

end
