class VotesController < ApplicationController
	def create
		@votes = current_user.votes.new(priority_id: params[:priority_id], direction: params[:format])

		if @votes.check 
			if @votes.save
				flash[:success] = "You have sucessfully voted!"
			else
				flash[:error] = "There was an error in saving your vote!"
			end
		else
			flash[:error] = "You have already voted on this priority"
		end
			redirect_to root_path
	end

	# private
	# def vote_params
	# 	params.require(:vote).permit(:priority_id)
	# end
end
