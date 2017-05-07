class PrioritiesController < ApplicationController
	def index
		@priorities = Priority.all
	end

	def new
		@priority = Priority.new
	end

	def create
		@priority = current_user.priorities.new(priority_params)
		if @priority.save
			flash[:success] = "New priority created"
		else
			flash[:error] = "There was a problem creating your priority"
		end
		redirect_to root_path
	end

	private

	def priority_params
		params.require(:priority).permit(:content, :title)
	end
end
