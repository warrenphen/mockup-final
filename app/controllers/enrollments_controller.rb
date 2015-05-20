class EnrollmentsController < ApplicationController
  def index
  end

	def new
  	@course = load_course
    @enrollment = @course.enrollments.build
  end

  def create
  	load_course
    @enrollment = @course.enrollments.new(course_id: @course.id, user_id: current_user.id)

  	if @enrollment.save
       redirect_to course_path(@course.id), notice: 'Registration created successfully. Please check your e-mail for confirmation'
      # UserMailer.conf_email(current_user).deliver_now
    else
      redirect_to root_path notice: 'Registration failed. Please try again'
    end
  end

  def edit
  end

  def destroy
  end

private

  def load_course
    @course = Course.find(params[:course_id])
  end

end
