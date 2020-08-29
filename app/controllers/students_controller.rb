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
      redirect_to new_student_path
  end

  def show
    @student =Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    #byebug
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:name, :age))
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end
end
