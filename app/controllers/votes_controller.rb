class VotesController < ApplicationController
	def create
		byebug
		@votes = current_user.votes.new(priority_id: params[:format])
	end
end
