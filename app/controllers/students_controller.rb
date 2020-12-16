class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to @student
  end
end
