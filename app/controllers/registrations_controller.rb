class RegistrationsController < ApplicationController
	  before_filter :ensure_logged_in, only: [:create, :destroy]

  def show 
    @course = load_course
    @registration = Registration.find(params[:id])
  end

  def new
    @course = load_course
    @registration = @course.registrations.build
  end

  def create
    @course = load_course
    @registration = @course.registrations.build(registration_params)
    @registration.user = current_user

    respond_to do |format|
      if @registration.save
        format.html do
          redirect_to course_path(@course.id), notice: 'Registration created successfully' 
        end
        format.js
      else
        format.html { render 'courses/show', alert: 'There was an error' }
      end
    end
  end

private

	def registration_params
    params.require(:registration).permit(:user_id, :course_id)
  end

  def load_course
    @course = Course.find(params[:course_id])
  end
  
end
