class StudentsController < ApplicationController
  def index
    @students=Student.all
  end

  def new
    @student=Student.new
  end

  def create
    @student=Student.create(params.require(: student).permit(:name, :age))
    if @student.valid?
      redirect_to student_path
      
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
