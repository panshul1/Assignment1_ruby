class EnrollmentsController < ApplicationController
  def index
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.create(params.require(:enrollment).permit(:courese_id, :student_id))
  end

  def destroy
    #byebug
    @enrollment = Enrollment.find(params[:id])
    @student = @enrollment.student
    @enrollment.destroy
    redirect_to student_path(@student)
  end
end
