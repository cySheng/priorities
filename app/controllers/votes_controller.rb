class VotesController < ApplicationController
	def create
		priority = Priority.find(params[:priority_id])
		if current_user.voted_for? priority
			if params[:format] == "up" 
				priority.upvote_from current_user
			else
				priority.downvote_from current_user
			end
		end
		redirect_to root_path
	end
end
