class RegistersController < ApplicationController
  def index
  end

	def new
  	@register = Register.new
  end

  def create
  	load_course
  
  	@register = @course.registers.build(reg_params)
    @register.user = current_user

  	if @register.save
      redirect_to root_path, notice: 'Registration created successfully. Please check your e-mail for confirmation'
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
  def reg_params
    params.require(:register).permit(:course_id, :user_id)
  end

  def load_course
    @course = Course.find(params[:course_id])
  end

end
