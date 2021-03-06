class PrioritiesController < ApplicationController
	def index
		all_of_it = Priority.all
		@priorities = {}
		all_of_it.each do |x|
			@priorities[x] = x.get_upvotes.size.to_i - x.get_downvotes.size.to_i
		end
		@priorities = @priorities.sort_by {|k,v| v}.reverse
	end

	def new
		@priority = Priority.new
	end

	def create
		@priority = current_user.priorities.new(priority_params)
		if @priority.check
			if @priority.save
				flash[:success] = "New priority created"
				redirect_to root_path
			else
				flash[:error] = "There was a problem creating your priority"
				redirect_to new_priority_path
			end
		else
			flash[:error] = "You have already created a priority today!"
			redirect_to root_path
		end
	end

	private

	def priority_params
		params.require(:priority).permit(:content, :title)
	end
end
