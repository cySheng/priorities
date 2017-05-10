class UsersController < Clearance::UsersController

	def create
		@user = User.new(user_params)
		@user.email_confirmation_token = Clearance::Token.new
		if @user.save 
			flash[:success] = "Your account has been created. You will be sent an email to confirm your account!"
			UserMailer.registration_confirmation(@user).deliver_now
      redirect_back_or url_after_create
		else
			flash[:error] = "There was an error in creating your account"
		end
		redirect_to root_path
	end



	private

	def user_params
		params.require(:user).permit(:nickname, :email, :password) 
	end

end
