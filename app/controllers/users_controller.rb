class UsersController < Clearance::UsersController

	def create
		@user = User.new(user_params)

		if @user.save 
			flash[:success] = "Your account has been created"
			sign_in @user
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
