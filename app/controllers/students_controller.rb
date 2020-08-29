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
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      redirected_to new_student_path
  end

  def show
    @student =Student.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
